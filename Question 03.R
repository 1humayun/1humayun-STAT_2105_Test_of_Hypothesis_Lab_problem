#........(i)..........
theta.0 = 3.2
sigma = sqrt(0.5)

alpha = 1 - pnorm(4.2, mean = theta.0, sd = sigma)
cat("The level of significance is:", alpha, "\n")

#...........(ii)...........
power.fn = function(theta)
{
   value = 1 - pnorm((4.2-theta)/sqrt(0.5))
   return(value)
}
theta = seq(from = 3, to = 6, by = 0.1)
plot(theta, power.fn(theta), 
     main = "Power Function", 
     xlab = "Theta", 
     ylab = "Power",
     type = "l")

