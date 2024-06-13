library(Maaslin2)

input_data <- df <- read.csv("df_otu.csv")
input_metadata <- read.csv("df_otu_meta.csv")
output <- "results"

fit_data <- Maaslin2(
  input_data = input_data,
  input_metadata = input_metadata,
  output = output,
  fixed_effects = c("group"),  # Adjust this based on the metadata column name
  min_abundance = 0.0, # if set to 0.1 ==> leads to loss of feature and there is stil no significant signal
  min_prevalence = 0.0 , # if set to 0.1 ==> leads to loss of feature and there is stil no significant signal
)
