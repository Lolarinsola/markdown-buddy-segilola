> **AI Assistance Declaration:** I used Claude (Anthropic, Sonnet 5.5) on Nov 17, 2026 to explore README structure, draft the README, and suggest R Markdown formatting. Prompts used: reproduced below. I verified outputs by previewing the rendered Markdown and checking links, heading levels, code fences and facts against the dataset. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Appendix: Prompts and Key Responses

Tool: Claude (Anthropic, Sonnet 5.5). Date: Nov 17, 2026.

## Step 1: Markdown structure and documentation goals

**Seed prompt**

> Explain what sections a good GitHub README for an R data analysis project should include.

*Key response:* a good README names the project and says what it does, explains how to install and run it, shows example usage, describes the data and outputs, and states the license and how to get help.

**Refinement prompt**

> Revise the sections list so it's concise and uses Markdown headers and bullet formatting.

*Key response (the README outline I used):*

```markdown
# Project Title
## Overview          - what the project does and why
## Project Structure - folder and file tree
## Requirements      - R version and packages
## Installation      - clone, install packages, add data
## Data              - expected columns and source
## Example Usage     - code to run and what it produces
## License
## AI Assistance Disclosure
```

**Critique/validation prompt**

> Check the Markdown syntax for correctness and readability.

*Key response:* the outline was valid; it suggested keeping one `#` title, using `##` for sections, and labelling code fences with a language.

## Step 2: README.md draft

**Seed prompt**

> Here's a summary of my R project: it reads a synthetic retail transactions CSV (10,000 orders, 10 columns), calculates revenue and profit per order, summarises by product category, and saves a CSV table and a bar chart; script is `scripts/analyze_sales.R`; packages are readr, dplyr and ggplot2. Generate a professional README.md file using Markdown.

**Refinement prompt**

> Add sections for Installation, Example Code, and License. Keep tone concise and professional.

**Critique/validation prompt**

> Review the Markdown for syntax errors and suggest 2 improvements for clarity.

*Key response:* no syntax errors. Two improvements suggested: (1) add a project structure tree so readers can find files, and (2) add a table of the expected data columns. Both are in the final README.

## Step 3: R Markdown documentation

**Seed prompt**

> Here's my R script description: it reads a retail transactions CSV, derives revenue and profit, summarises by category, and saves a table and chart. Suggest Markdown formatting and code block examples.

**Refinement prompt**

> Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs).

**Critique/validation prompt**

> Is the Markdown consistent with RMarkdown best practices?

*Key response:* use a YAML header, label every code chunk, set `eval = FALSE` for chunks that need local data, use relative paths, and keep one top-level heading per section. In the final files, the script is split into labelled sections that the `.Rmd` pulls in with `knitr::read_chunk()`, so the documentation and the script cannot drift apart.
