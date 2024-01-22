setwd("/Users/naman/STUDY/STATISTICAL METHODS /PROJECT")
library(xlsx)
df = read.csv("field_data.csv")
df
summary(df)
View(df)

# Your dataset

# Z-score normalization
normalized_values <- scale(df$temp)
df$normal_temp=normalized_values

# Print normalized values
cat("Original Values: ", df$temp, "\n")
cat("Normalized Values: ", normalized_values, "\n")

# Boxplot for yield by region
boxplot(df$yield ~ df$normal_temp, main="Boxplot of Yield by Region", xlab="Region", ylab="Yield")

# Scatterplot for yield against temperature
plot(df$temp, df$yield, main="Scatterplot of Yield against Temperature", xlab="Temperature", ylab="Yield")

# Assuming your data frame is called df
library(ggplot2)

#as.factor(df$region)
#as.factor(df$fertilizer)

# Box plots for each factor

ggplot(df, aes(x = factor(fertilizer), y = yield)) +
  geom_boxplot() +
  labs(title = "Boxplot of Yield by Region")
ggplot(df, aes(x = factor(region), y = yield)) +
  geom_boxplot() +
  labs(title = "Boxplot of Yield by Region")

# Shapiro-Wilk test for normality
shapiro.test(df$yield)
# Q-Q plot for yield
qqnorm(df$yield)
qqline(df$yield, col = 2)

# Assuming your data frame is called df
library(ggplot2)

# Kernel density plot
ggplot(df, aes(x = yield)) +
  geom_density(fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Kernel Density Plot of Yield", x = "Yield", y = "Density") +
  theme_minimal()


correlation_temp <- cor(df$temp, df$yield)
cat("Correlation between temperature and yield:", correlation_temp, "\n")
correlation_hum <- cor(df$humidity, df$yield)
cat("Correlation between humidity and yield:", correlation_hum, "\n")
# Scatter plot
plot(df$temp, df$yield, main="Scatter plot of Temperature vs. Humidity", xlab="Temperature", ylab="Humidity")


df$fertilizer <- as.factor(df$fertilizer)
df$region <- as.factor(df$region)

#ONE WAY
anova_one = aov(yield ~ fertilizer,data = df)
summary.aov(anova_one)

anova_one = aov(yield ~ region,data = df)
summary.aov(anova_one)


#TWO WAY
anova_two = aov(yield ~ fertilizer + region ,data = df)
summary.aov(anova_two)

# TWO WAY WITH INTERACTION
anova_two_interaction = aov(yield ~fertilizer*region,data = df)
summary.aov(anova_two_interaction)

install.packages('AICcmodavg')
library(AICcmodavg)

model.set <- list(anova_one, anova_two, anova_two_interaction)
model.names <- c("one.way", "two.way", "anova_two_interaction")

aictab(model.set, modnames = model.names)


tukey_test = TukeyHSD(anova_two)

tukey_test

tukey.plot.aov<-aov(yield ~ fertilizer, data=df)
tukey.plot.test<-TukeyHSD(tukey.plot.aov)
plot(tukey.plot.test, las = 1)


with(df , pairwise.t.test(x=yield, g=fertilizer, p.adjust="bonf")) ## BONFERRONI LSD 

with(df , pairwise.t.test(x=yield, g=region, p.adjust="bonf")) ## BONFERRONI LSD 



