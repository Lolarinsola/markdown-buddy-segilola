> **AI Assistance Declaration:** I used Claude (Anthropic, Sonnet 5.5) on Nov 17, 2026 to draft the README structure, this README, the R script, and the R Markdown file. Prompts used: see the [AI Assistance Disclosure](#ai-assistance-disclosure) below and [`Appendix_Prompts.md`](Appendix_Prompts.md). I verified outputs by previewing the rendered Markdown, checking every link, heading level and code fence, and reading all text against the dataset. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Markdown Buddy: Retail Sales Summary in R

An R mini-project that summarises revenue, profit and margin by product category from a synthetic retail transactions dataset, documented with a README and an R Markdown file.

## Overview

`scripts/analyze_sales.R` reads 10,000 synthetic retail transactions, calculates revenue and profit for each order, and reports totals by product category. It saves a summary table (CSV) and a bar chart (PNG). The project was built for BDA400 Assignment 1 to practise clear, professional project documentation.

## Project Structure

```text
markdown-buddy-segilola/
├── README.md                  # Project overview (this file)
├── Reflection.md              # Reflection questions
├── Appendix_Prompts.md        # All AI prompts and key responses
├── LICENSE                    # MIT license
├── scripts/
│   └── analyze_sales.R        # The analysis script
└── docs/
    └── analyze_sales.Rmd      # R Markdown documentation of the script
```

`data/` and `output/` are created locally and are not tracked by Git.

## Requirements

- R 4.0 or later
- R packages: `readr`, `dplyr`, `ggplot2` (and `rmarkdown` to knit the `.Rmd`)

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/lolarinsola/markdown-buddy-segilola.git
   cd markdown-buddy-segilola
   ```

2. Install the required packages in R:

   ```r
   install.packages(c("readr", "dplyr", "ggplot2", "rmarkdown"))
   ```

3. Create a `data/` folder and save the synthetic retail transactions file inside it as `data/retail_transactions.csv`.

## Data

The script expects one CSV file with these columns:

| Column | Description |
|--------|-------------|
| `order_id` | Unique order identifier |
| `date` | Order date (`YYYY-MM-DD`) |
| `product` | Product name |
| `category` | Product category (e.g. Electronics, Home) |
| `region` | Sales region |
| `units` | Units sold |
| `price` | Price per unit before discount |
| `discount` | Discount as a fraction of price (0.10 = 10%) |
| `cost` | Cost per unit |
| `channel` | Sales channel (Store, Online, Phone) |

Only synthetic data is used. No real or personal data is included.

## Example Usage

From the project root in R:

```r
source("scripts/analyze_sales.R")
```

The script prints the category summary to the console and writes two files to `output/`:

| File | Contents |
|------|----------|
| `category_summary.csv` | Orders, units, revenue, profit and margin by category |
| `revenue_by_category.png` | Bar chart of revenue by category |

Revenue is `units * price * (1 - discount)` and profit is `revenue - units * cost`.

To build the documentation, open `docs/analyze_sales.Rmd` in RStudio (or Posit Cloud) and click **Knit**.

## License

Released under the [MIT License](LICENSE).

## AI Assistance Disclosure

- **Tool:** Claude (Anthropic, Sonnet 5.5), used on Nov 17, 2026.
- **Main prompts:**
  - "Explain what sections a good GitHub README for an R data analysis project should include."
  - "Here's a summary of my R project: [summary]. Generate a professional README.md file using Markdown."
  - "Add sections for Installation, Example Code, and License. Keep tone concise and professional."
  - "Review the Markdown for syntax errors and suggest 2 improvements for clarity."
- **Changes after review:** included the project structure tree and the data column table (the two clarity improvements suggested), stated the revenue and profit formulas explicitly, and checked that every link, heading level and code fence renders correctly. The full prompt list and key responses are in [`Appendix_Prompts.md`](Appendix_Prompts.md).
