daily.intake = c(5260, 5470, 5640, 6180, 6390, 6515, 6805, 7515, 7515, 8230, 8770)
mu = 7725

#........(a).........
# H0: mean = 7725    (Null Hypothesis)
# H1: mean != 7725   (Alternative Hypothesis)

x.bar = mean(daily.intake)
x.bar
s = sd(daily.intake)
s
n = length(daily.intake)
n

#.........(b)........
# observed value of t...
t.stat = (x.bar-mu)/(s/sqrt(n))
cat("Observed value of t statistic is ", t.stat, "\n")

#.........(c)........
# P value...
df = n-1
p.value = 2 * pt(t.stat,df)
cat("P value is ", p.value, "\n")

#..........(d).......
#Comment: Here p-value = 0.0.01814, 
#from this we can say that the H0 is not rejected in 5% level of significance
#test is insignificance. 
#Thus, true mean is different from 7725.


