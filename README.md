




# 📊 Statistical Analysis with R

## 🔗 Repository
[GitHub Repository](https://github.com/namansingh2623/Statistical-Analysis-with-R/tree/main)

---

## 📌 Overview

This project focuses on performing exploratory data analysis and statistical testing using R. The dataset (`field_data.csv`) contains information about crop **yield**, **temperature**, **humidity**, **fertilizer type**, and **region**. The goal is to explore how environmental and regional factors influence agricultural yield using a variety of statistical techniques and visualizations.

---

## 🧰 Technologies Used

- **R**
- **ggplot2**, **xlsx**, **AICcmodavg**
- **Base R Functions** for plotting, correlation, ANOVA, and hypothesis testing

---


## DATASET: 
The dataset consists of 100 observations, encompassing variables such as height of the crop, temperature, humidity, fertilizers, region, and respective yield.
Dataset Link: https://www.kaggle.com/datasets/jhonculler/fdffa/data

---
## 🔍 Key Analyses & Methods

### 📊 Data Preprocessing
- Imported dataset using `read.csv`
- Normalized temperature values using Z-score
- Converted categorical variables (`fertilizer`, `region`) to factors

### 📈 Visualizations
- **Boxplots**: Yield by region and fertilizer
- **Scatter plots**: Yield vs. temperature, temperature vs. humidity
- **Density plot**: Kernel density of yield
- **Q-Q plot**: Normality check of yield

### 📉 Correlation Analysis
- Pearson correlation between:
  - Temperature and yield
  - Humidity and yield

### 🧪 Statistical Tests
- **Shapiro-Wilk Test**: To assess normality of yield
- **ANOVA (One-way and Two-way)**:
  - Yield by fertilizer
  - Yield by region
  - Yield by both (with interaction effects)
- **Model Comparison**:
  - Compared ANOVA models using **AIC** via `AICcmodavg::aictab()`
- **Tukey’s HSD Test**:
  - Post-hoc test for significant group differences
- **Bonferroni-adjusted pairwise t-tests**:
  - For both fertilizer and region

---

## 📌 Results Summary

- Identified significant differences in yield across fertilizer types and regions.
- Two-way ANOVA with interaction provided the best model fit.
- Correlation analysis revealed the strength of the relationship between temperature/humidity and yield.

---

## ✅ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/namansingh2623/Statistical-Analysis-with-R.git

	2.	Open RStudio or your preferred R environment.
	3.	Set the working directory to the project folder:

setwd("/path/to/Statistical-Analysis-with-R")


	4.	Run the analysis script (analysis_script.R) step-by-step or all at once.

⸻

📎 License

This project is open for educational and non-commercial use.

⸻

🙌 Acknowledgements

Special thanks to the instructors and course team of Statistical Methods for guidance and dataset access.

⸻

📢 For questions or suggestions, feel free to open an issue or fork the repo!

Let me know if you’d like to embed images, add sample outputs, or include a PDF version!
