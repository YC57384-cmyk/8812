if(!require(lavaan)) install.packages("lavaan")
library(lavaan)

# Define the population model 
population_model <- '
  Assertiveness =~ 0.8*SAQ1 + 0.7*SAQ2 + 0.8*SAQ3
  Distress =~ 0.8*SDS1 + 0.8*SDS2 + 0.7*SDS3
  Satisfaction =~ 0.9*GMS1 + 0.8*GMS2 + 0.8*GMS3

  Distress ~ -0.5*Assertiveness
  Satisfaction ~ 0.4*Assertiveness
  Satisfaction ~ -0.6*Distress
'
# Generate the dataset (N = 500)
set.seed(2024) 
simulated_data <- simulateData(population_model, sample.nobs = 500)
print(head(simulated_data))

write.csv(simulated_data, "~/Desktop/simulateddata.csv", row.names = FALSE)
cat("Data successfully generated and saved to:\n", file.path(getwd(), "simulateddata.csv"), "\n")
