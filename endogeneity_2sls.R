# Load the necessary package
library(haven)
library(dplyr)
library(ggplot2)
library(ggrepel)
library(broom)
library(stargazer)
library(lmtest)
library(AER)
library(ggrepel)

df <- read_dta('https://github.com/QuantEcon/lecture-python/blob/master/source/_static/lecture_specific/ols/maketable1.dta?raw=true')

######## Endogeneity

# Subsetting data to remove rows with missing values in logem4 and avexpr
df1_subset2 <- df[complete.cases(df[c("logem4", "avexpr")]) , ]
X <- df1_subset2$logem4
y <- df1_subset2$avexpr
labels <- df1_subset2$shortnam

# Scatter plot with labels
ggplot(df1_subset2, aes(x = logem4, y = avexpr)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  geom_text_repel(aes(label = labels), hjust = 0, vjust = 0, , size = 3) +
  labs(title = "Figure 3: First-stage relationship between settler mortality and expropriation risk",
       x = "Log of Settler Mortality",
       y = "Average Expropriation Risk 1985-95") +
  theme_bw()


# 2SLS regression
# First stage
df4 <- read_dta('https://github.com/QuantEcon/lecture-python/blob/master/source/_static/lecture_specific/ols/maketable4.dta?raw=true')

# Only complete data, indicated by baseco = 1, is used for estimation
df4 <- df4 %>%
  filter(baseco == 1)

# Add constant variable
df4$const <- 1

# First-stage regression model
model_fs <- lm(avexpr ~ const + logem4, data = df4, na.action = "drop")
summary(model_fs)

## Second stage
# Adding predicted avexpr as a new variable
df4$predicted_avexpr <- predict(model_fs, newdata = df4)

# Second-stage regression with predicted avexpr
model_ss <- lm(logpgp95 ~ const + predicted_avexpr, data = df4)
summary(model_ss)

# The second-stage regression results give us an unbiased and consistent estimate
# of the effect of institutions on economic outcomes.

# Second-stage regression using Two-Stage Least Squares (2SLS)
# the default covariance estimator for the ivreg function from the AER package
# is the homoskedastic (unadjusted) covariance matrix
model_ss <- ivreg(logpgp95 ~ avexpr + const | logem4 + const, data = df4)

# Summary of the 2SLS model
summary(model_ss)