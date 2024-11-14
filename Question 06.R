group1 <- c(2.40, 1.50, 2.00, 1.90, 2.30, 2.90, 2.80, 2.60, 3.50, 4.50, 3.70, 5.50, 2.80, 6.50, 5.60)
group2 <- c(2.60, 1.50, 1.30, 2.40, 2.90, 3.00, 3.10, 3.90, 2.90, 3.90, 4.80)
x = group1
y = group2

m1 = mean(x)
m2 = mean(y)

#Standard deviation
s1 = sd(x)
s2 = sd(y)

n1 = length(x)
n2 = length(y)
df = n1+n2-2

s.sq = (((n1-1)*s1^2)+((n2-1)*s2^2))/df
t.stat = (m1-m2)/sqrt(s.sq*((1/n1)+(1/n2)))

p.value = 2*pt(t.stat,df, lower.tail = F)
cat("t-statistic:", t.stat, "\n")
cat("p-value:", p.value, "\n")

#Comment:
#Since, p-value: 0.4222291 is greater than level of significance (say 0.05),
#we accept the H0
#There is no difference between two mean.
