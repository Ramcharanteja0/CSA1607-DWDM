# Sample data
x <- c(12, 15, 12, 18, 20, 15, 22, 15, 25, 30, 12, 18)

# 1. Mean
mean_val <- mean(x)
cat("Mean:", mean_val, "\n")

# 2. Median
median_val <- median(x)
cat("Median:", median_val, "\n")

# 3. Mode (custom function, since R has no built-in one)
get_mode <- function(v) {
  uniq_v <- unique(v)
  freq <- tabulate(match(v, uniq_v))
  uniq_v[freq == max(freq)]   # handles multiple modes too
}
mode_val <- get_mode(x)
cat("Mode:", mode_val, "\n")

# 4. Quartiles (Q0=min, Q1, Q2=median, Q3, Q4=max)
quartiles <- quantile(x)
cat("Quartiles:\n")
print(quartiles)

# Just Q1 and Q3 individually
Q1 <- quantile(x, 0.25)
Q3 <- quantile(x, 0.75)
cat("Q1:", Q1, " Q3:", Q3, "\n")

# 5. Mid-range = (max + min) / 2
# 5. Mid-range
midrange_val <- (max(x) + min(x)) / 2
cat("Mid-range:", midrange_val, "\n")

# Summary of everything at once
cat("\n--- Summary ---\n")
cat("Mean     :", mean_val, "\n")
cat("Median   :", median_val, "\n")
cat("Mode     :", mode_val, "\n")
cat("Q1       :", Q1, "\n")
cat("Q3       :", Q3, "\n")
cat("Mid-range:", midrange_val, "\n")

