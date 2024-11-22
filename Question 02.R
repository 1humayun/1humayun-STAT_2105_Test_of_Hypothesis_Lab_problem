expend=c(9.21,7.53,7.48,8.08,8.09,10.15,8.40,10.88,6.13,7.90,
         11.51, 12.79,7.05,11.85,9.97,7.48,8.79,9.69,9.68,7.58,9.19,8.11)
stature=c("obese","lean","lean","lean","lean","lean","lean",
          "lean", "lean","lean","obese","obese","lean","obese",
          "obese", "lean","obese","obese","obese","lean","obese","lean")

ex.lean = expend[stature == "lean"]
ex.obese = expend[stature == "obese"]

m1 = mean(ex.lean)
m1

m2 = mean(ex.obese)
m2
s1 = sd(ex.lean)
s1
s2 = sd(ex.obese)
s2
n1 = length(ex.lean)
n1
n2 = length(ex.obese)
n2
df = n1+n2-2
df

s.sq = ((n1-1)s1^2 + (n2-1)s2^2)/df

t.stat = (m1-m2)/sqrt(s.sq((1/n1)+(1/n2)))
cat("Observed value of t statistic: ", t.stat, "\n")


p.value = 2*pt(t.stat,df)
cat("P value: ", p.value, "\n")

#Comment:
#Here, P value:  0.01180395 
#that means the smallest level of significance at which H0 maybe rejected is 1.18%
# for 5% level of significance H0 is rejected.
# thus, two means is significantly different.


