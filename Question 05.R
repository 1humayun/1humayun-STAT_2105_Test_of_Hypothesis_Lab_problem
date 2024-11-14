weight <- c(58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 70, 71, 72, 65)
height <- c(115, 117, 120, 123, 126, 129, 132, 139, 142, 146, 150, 154, 159, 164, 135)

# Reduced model (H0)
reduced_model <- lm(weight ~ 1) 

# Full model (H1)
full_model <- lm(weight ~ height) 

logLik_reduced <- logLik(reduced_model)
logLik_full <- logLik(full_model)

LRT <- 2 * (logLik_full - logLik_reduced)

# Degrees of freedom = 1
df = 1
p.value <- pchisq(LRT, df, lower.tail = F)

cat("Likelihood Ratio Test Statistic:", LRT, "\n")
cat("P value:", p.value, "\n")

#Comment:
#Since, the p value is very small (close to 0),
#we reject the null hypothesis and conclude that b1 not equal to 0.
#Therefore height is significant (positive) linear predictor of weight
