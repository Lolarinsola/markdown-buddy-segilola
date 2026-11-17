> **AI Assistance Declaration:** I used Claude (Anthropic, Sonnet 5.5) on Nov 17, 2026 to help draft the project documentation. Prompts used: see `Appendix_Prompts.md`. I verified outputs by previewing the rendered Markdown and checking them against the script and dataset. All final calculations are done by myself. I am responsible for the accuracy and originality of this work. The reflection answers below are my own.

# Reflection

## 1. What did AI do well, and where did it fall short, when drafting documentation?

AI was fast at producing a clean README structure and consistent Markdown: headers, tables, labelled code fences. It also reminded me of sections I would have skipped, such as a data column table. Where it fell short is that it does not know my project. Its first draft was generic, and it could not tell me which columns my data really has or whether the cost column is per unit. I had to supply those facts and check them against the dataset.

## 2. How did you verify and improve the AI output?

I previewed the rendered Markdown and checked that headers, tables, lists and code blocks displayed correctly, that every link pointed to a real file, and that heading levels did not skip. I then applied the two clarity improvements from the critique prompt (a project structure tree and a data column table), and I wrote the revenue and profit formulas into the README so a reader does not have to guess how they are calculated.

## 3. What are the ethical responsibilities when using AI for documentation?

I must disclose which tool I used, when, and with what prompts, and I must not present AI text as unchecked fact. Documentation that is wrong is worse than none, because readers trust it. I also kept private data out of the prompts by using only a synthetic dataset. In a team I would treat AI output as a first draft that a person has read, tested and is accountable for.
