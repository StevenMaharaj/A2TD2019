# Question 1
# 
# 400 random water samples were collected from an aquifer. A total of 183 of these samples contained
# a contaminant (a pathogenic bacterium). Historically, the average rate of contaminated samples was
# 42%
# (a) Calculate a p-value using an exact procedure and an approximate procedure for the null hypothesis
# of no change, and calculate 95% confidence intervals for the proportion of contaminated samples.
# Is there evidence of an increase in the frequency of contaminated samples from this aquifer?
#   (b) Discuss briefly the potential for and the implications of Type I (in no more than 2 sentences) and
# Type II (in no more than 2 sentences) errors in this situation.

n <- 400
contaminant <- 183
p0 <- 0.42

# approxation 
print(contaminant/n)
zalpha = qnorm(0.95)
print(zalpha)
print((contaminant/n - p0)/(sqrt(p0*(1-p0)/n)))
test = binom.test(contaminant, n, p = 0.42,
          alternative = c("greater"),
          conf.level = 0.95)
print(test)


exacttest = 1 - pbinom(183, size=400, prob=0.42)
print(exacttest)