data = matrix(c(7, 1, 3,
              87, 18, 84,
              12, 3, 4,
              9, 1, 7),
              nrow = 4, byrow = T)
r.total = rowSums(data)
c.total = colSums(data)
total = sum(data)

#Expected value...
ex.value = outer(r.total, c.total)/total

chi.sq = sum(((data-ex.value)**2)/ex.value)
cat("Test value of chi-squared test: ", chi.sq)

df = (nrow(data)-1) * (ncol(data)-1)
p.value = 1-pchisq(chi.sq,df)
cat("P value: ", p.value, "\n")

#Comment:
# as the p value (0.4828) is greater than level of significance,
# we may unable to reject the null hypothesis.
#the students smoking habit is independent of their exercise level of the students

