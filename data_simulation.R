if(!require(lavaan)) install.packages("lavaan")
library(lavaan)
# Measurement Model (Defining Latent Variables based on established scales)
  # SAQ = Sexual Assertiveness (3 indicator items for simplicity)
  Assertiveness =~ 0.8*SAQ1 + 0.7*SAQ2 + 0.8*SAQ3
