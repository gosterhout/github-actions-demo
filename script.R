# script.R
print("Running R script via GitHub Actions!")

# Create a timestamp file
timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
write(paste("Last run:", timestamp), "last_run.txt")

# Do some simple data analysis
data <- data.frame(
  x = 1:10,
  y = 10:1
)

result <- lm(y ~ x, data = data)
summary_text <- capture.output(summary(result))
write(summary_text, "analysis_results.txt")

print("R script completed successfully!")