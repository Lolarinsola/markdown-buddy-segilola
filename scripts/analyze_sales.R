# analyze_sales.R
# Summarise revenue, profit and margin by product category for the synthetic
# retail transactions dataset, then save a summary table and a bar chart.
#
# Run from the project root:  source("scripts/analyze_sales.R")

## ---- load-packages
library(readr)
library(dplyr)
library(ggplot2)

## ---- set-paths
input_path <- "data/retail_transactions.csv"
output_dir <- "output"

if (!file.exists(input_path)) {
  stop("Input file not found: ", input_path,
       "\nPlace the synthetic retail transactions CSV in the data/ folder.")
}
dir.create(output_dir, showWarnings = FALSE)

## ---- read-data
sales <- read_csv(input_path, show_col_types = FALSE)

required_cols <- c("order_id", "date", "product", "category", "region",
                   "units", "price", "discount", "cost", "channel")
missing_cols <- setdiff(required_cols, names(sales))
if (length(missing_cols) > 0) {
  stop("Missing required columns: ", paste(missing_cols, collapse = ", "))
}

## ---- derive-metrics
# price and cost are per unit; discount is a fraction of price (0.10 = 10%)
sales <- sales %>%
  mutate(
    date    = as.Date(date),
    revenue = units * price * (1 - discount),
    profit  = revenue - units * cost
  )

## ---- summarise
category_summary <- sales %>%
  group_by(category) %>%
  summarise(
    orders  = n(),
    units   = sum(units),
    revenue = round(sum(revenue), 2),
    profit  = round(sum(profit), 2),
    margin  = round(profit / revenue, 3),
    .groups = "drop"
  ) %>%
  arrange(desc(revenue))

print(category_summary)

## ---- save-table
write_csv(category_summary, file.path(output_dir, "category_summary.csv"))

## ---- plot-and-save
revenue_plot <- ggplot(category_summary,
                       aes(x = reorder(category, revenue), y = revenue)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  scale_y_continuous(labels = scales::label_dollar()) +
  labs(title = "Revenue by Product Category",
       x = NULL, y = "Revenue") +
  theme_minimal()

ggsave(file.path(output_dir, "revenue_by_category.png"),
       revenue_plot, width = 7, height = 4, dpi = 150)
