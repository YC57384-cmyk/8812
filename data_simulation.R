if(!require(lavaan)) install.packages("lavaan")
library(lavaan)
population_model <- '
# Measurement Model (Defining Latent Variables based on established scales)
# SAQ = Sexual Assertiveness (3 indicator items for simplicity)
# Assertiveness =~ 0.8*SAQ1 + 0.7*SAQ2 + 0.8*SAQ3

# SDS = Sexual Distress (3 items)
# Distress =~ 0.8*SDS1 + 0.8*SDS2 + 0.7*SDS3
  
# GMSEX = Sexual Satisfaction (3 items)
# Satisfaction =~ 0.9*GMS1 + 0.8*GMS2 + 0.8*GMS3

# Structural Model (Hypothesized paths)
# Assertiveness negatively predicts Distress
# Distress ~ -0.5 * Assertiveness
  
# Satisfaction is predicted by Assertiveness (+) and Distress (-)
#Satisfaction ~ 0.4 * Assertiveness + -0.6 * Distress
'
set.seed(2024) 
simulated_data <- simulateData(population_model, sample.nobs = 500)
head(simulated_data)
write.csv(simulated_data, "simulated_sexual_health_data.csv", row.names = FALSE)
