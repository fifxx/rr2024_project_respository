# The Colonial Origins of Comparative Development: An Empirical Investigation
University of Warsaw, Faculty of Economic Sciences, June 2024

# Authors
Alexey Demchuk 447348

Dominika Dunda 422722

Filip Ferens 420872

# Overview
This project aims to reproduce and enhance the data analysis and regression originally conducted using Python and the Pandas library, as detailed in an article published on QuantEcon. The primary objective is to determine whether differences in institutions can help to explain observed economic outcomes, focusing on the seminal paper by Acemoglu, Johnson, and Robinson (2001).

# Objectives
Accurately replicate the original analysis using R to ensure the results are consistent with those obtained in Python.

Improve the analysis by including additional steps such as handling missing values, refining variable selection, and any other modifications that arise during the analysis.

# Methodology
We translated the original Python code to R and performed the analysis using RStudio and GitHub for collaboration. The final report is presented in R Markdown to ensure reproducibility and clarity.

# Data
The data used in this analysis is sourced directly from the QuantEcon repository, ensuring consistency with the original analysis. It includes key indicators for economic outcomes and institutional differences, such as settler mortality rates, protection against expropriation risk, and GDP per capita.

# Tools Used
RStudio for coding and analysis.

R Markdown for documenting and presenting the analysis.

GitHub for version control and collaboration.

AI for charts generation and code corrections.

# Report Structure
The report is structured as follows:

Introduction and Objectives - Overview and goals of the project.

Methodology - Detailed methodology and tools used.

Data Overview - Comprehensive look at the data used in the analysis.

Data Preparation - Steps taken to clean and preprocess the data.

Simple Linear Regression Model - Analysis of the basic linear relationship between the variables.

Multivariate Regression Model - Examination of the multiple linear relationships and their interactions.

Endogeneity (Two-stage Least Squares (2SLS) Regression Model) - Addressing potential endogeneity issues using a two-stage regression approach.

Summary - Conclusions and insights derived from the analysis.

# Results
Our analysis replicates the original findings and demonstrates the robustness of the results across different software environments (R and Python). 

The key findings include:

Simple Linear Regression demonstrates a positive relationship between institutional quality and economic outcomes.

Multivariate Regression confirms the positive relationship while controlling for additional factors such as climate and continent-level differences.

2SLS Regression addresses endogeneity concerns, providing unbiased estimates that highlight the significant impact of institutions on economic development.

# Conclusion
This project successfully reproduces and enhances the original analysis, providing robust evidence that institutional differences, rooted in colonial-era institutions, significantly contribute to variations in income levels among countries today.

# Repository Contents
R Markdown File (RR.Rmd) - The main file containing the analysis.

HTML File (RR.html) - The report in HTML.

Images - Visualizations and plots generated during the analysis.

README.md: This file, providing an overview of the project and instructions for replication.

# How to Run the Analysis
1) Clone the Repository using f.e. git clone <https://github.com/fifxx/rr2024_project_respository>

2) Open the R project in RStudio.

3) Ensure all required packages are installed 

4) Knit the RR.Rmd file to generate the report.

# Contact
For any questions or clarifications, please contact the authors via their university email addresses.
