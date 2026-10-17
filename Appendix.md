> **AI Assistance Declaration:** I used Claude (Anthropic, Opus 5.5) on October 17, 2026 for README, R Markdown and writing assistance. Prompts used: in Appendix.md. I verified outputs using a Posit Cloud knit and the GitHub preview. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Prompt Appendix

| Student | Tool | Date |
|---|---|---|
| Jahed Ahmed | Claude Opus 5.5 | October 17, 2026 |

## Step 1 – README structure

1. **Seed prompt:** "Explain what sections a good GitHub README for an R data analysis project should include."  
   *Response:* Outlined common sections such as setup and examples.
2. **Refinement prompt:** "Revise the sections list so it's concise and uses Markdown headers and bullet formatting."  
   *Response:* Shortened the list and formatted it as headers.
3. **Critique prompt:** "Check the Markdown syntax for correctness and readability."  
   *Response:* Found no problems with the syntax.

Benchmarked against the **tidyr** README.

```markdown
# Daily Weather Summary with tidyr
## Overview
## Project Structure
## Dependencies
## Installation
## Quick Start
## Outputs
## License
## AI Assistance Disclosure
```

## Step 2 – README.md

1. **Seed prompt:** "Here's a summary of my R project: Summarises synthetic daily weather for two cities, reshaping the data with tidyr to compare temperature ranges and count rainy days. Generate a professional README.md file using Markdown."  
   *Response:* Returned a first version of the README.
2. **Refinement prompt:** "Add sections for Installation, Example Code, and License. Keep tone concise and professional."  
   *Response:* Added setup, example and license parts.
3. **Critique prompt:** "Review the Markdown for syntax errors and suggest 2 improvements for clarity."  
   *Response:* Suggested: (1) explain what 'long format' means for beginners; (2) shorten the quick start to two commands.

Changes I applied:

- Added a one-sentence explanation of long vs wide data
- Reduced Quick Start to two code lines
- Renamed 'Example Code' to 'Quick Start'
- Removed emoji headings the AI added
- Verified the faceted chart chunk knits without warnings

## Step 3 – R Markdown

1. **Seed prompt:** "Here's my R script description: weather_summary.R – Summarises synthetic daily weather for two cities, reshaping the data with tidyr to compare temperature ranges and count rainy days. Suggest Markdown formatting and code block examples."  
   *Response:* Suggested chunks for import, reshape and plot.
2. **Refinement prompt:** "Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs)."  
   *Response:* Moved content into Purpose / Inputs / Outputs.
3. **Critique prompt:** "Is the Markdown consistent with RMarkdown best practices?"  
   *Response:* Recommended hiding warnings and labelling chunks.

## Checks I Completed

_Tick each item after completing it:_

- [x] Counted rainy days manually in Google Sheets
- [x] Compared with the tidyr README
- [x] Knit finished with no warnings
- [x] README tables and code rendered on GitHub
