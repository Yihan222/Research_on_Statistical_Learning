# install packages:
## source("src/install-packages.R")
## installPackages()
# Used libraries
library(tidyverse) # includes many useful data analysis tools
library(ggplot2)
library(GGally)
library(DataExplorer)
library(corrplot)
library(ggpubr)

# R source files
source("src/data-cleaning.R")
source("src/plots/BarPlots.R")
source("src/plots/box-and-whiskers.R")
source("src/plots/Scatterplot-Matrix.R")
source("src/plots/2D-density.R")
source("src/plots/corelationMatrix.R")
source("src/plots/corelationPlot.R")
source("src/plots/Boxplots.R")
source("src/plots/CountTables.R")
source("src/tests/normality_tests.R")
source("src/tests/slope-oldpeak.R")
source("src/tests/thalach-target.R")
source("src/tests/linearCorelation.R")
source("src/tests/descriptiveStatistics.R")
source("src/tests/chi-square-discrete.R")

#Data file
DATA_FILE <- "data/processed.cleveland.data"

# Data import
data <- read.csv(DATA_FILE)

# Data cleaning
dataClean <- cleanData(data)
## Required for Correlation Matrix (text data returns errors)
dataRClean <- roughlyCleanData(data)

# Graph generation

## Barplots generation
generateBarPlots(dataClean)

## Density Plots
generateDensityPlots(dataClean)

## Box and whisker plots
generateBoxAndWhiskers(dataClean)

## Scatterplot Matrix generation
generateScatterPlot(dataClean)

## 2D - density plots
generate2DDensity(dataClean)

## Correlation Matrix
generatecorrelationMatrix(dataRClean)

## Correlation Plot
generateCorrelationPlots(dataClean)

## Boxplots generation
generateBoxPlots(dataClean)

# Hypotheses testing
NormalityTests(dataClean)

thalachTarget(dataClean)

slopeOldpeak(dataClean)

linearCorelation (dataClean)

## Descriptive Statistics
DescriptiveStatistics(dataClean)

## Counts Tables generation
generateTables(dataClean)

## Chi-square test
generateChiSqTest()
