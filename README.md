> **AI Assistance Declaration:** I used Claude (Anthropic, Opus 5.5) on October 17, 2026 for explaining tidyr reshaping simply and formatting my README and .Rmd. Prompts used: in Appendix.md. I verified outputs using a Posit Cloud knit and the GitHub preview. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Daily Weather Summary with tidyr

Jahed Ahmed · CDI College · BDA400

## Overview

Summarises synthetic daily weather for two cities, reshaping the data with tidyr to compare temperature ranges and count rainy days.

1. Read synthetic weather data for two cities
2. Reshape max and min temperatures with `pivot_longer()`
3. Calculate average temperatures per city
4. Count days with rain

> Weather values are synthetic.

*Long format* means each row holds one measurement (for example, one temperature) instead of several measurements in separate columns.

## Project Structure

```text
markdown-buddy-jahedahmed/
├── README.md
├── weather_summary.Rmd
├── Reflection.md
├── Appendix.md
├── R/
│   └── weather_summary.R
└── data/
    └── weather_synthetic.csv
```

## Dependencies

| Package | Used for |
|---------|----------|
| `readr` | Read CSV |
| `dplyr` | Summaries |
| `tidyr` | Reshape max/min temperature to long format |
| `ggplot2` | Line chart |

Needs R 4.1+ (for the native pipe-friendly tidyr version).

## Installation

1. Clone:

   ```bash
   git clone https://github.com/collagecdi1111/markdown-buddy-jahedahmed.git && cd markdown-buddy-jahedahmed
   ```

2. Packages:

   ```r
   install.packages(c("readr", "dplyr", "tidyr", "ggplot2"))
   ```

## Quick Start

```r
source("R/weather_summary.R")
```

```r
rmarkdown::render("weather_summary.Rmd")
```

The second line knits the documentation to HTML.

## Outputs

- `weather_long` - long-format temperature table
- `city_temps` - average high and low per city
- `rainy_days` - count of days with rain per city
- Faceted line chart

## License

Code released under [MIT](https://opensource.org/licenses/MIT).

## AI Assistance Disclosure

Tool used: **Claude** (Anthropic, Opus 5.5) – October 17, 2026

Prompts:

1. "Explain what sections a good GitHub README for an R data analysis project should include."
2. "Here's a summary of my R project: Summarises synthetic daily weather for two cities, reshaping the data with tidyr to compare temperature ranges and count rainy days. Generate a professional README.md file using Markdown."
3. "Add sections for Installation, Example Code, and License. Keep tone concise and professional."
4. "Review the Markdown for syntax errors and suggest 2 improvements for clarity."

Changes I applied:

- Added a one-sentence explanation of long vs wide data
- Reduced Quick Start to two code lines
- Renamed 'Example Code' to 'Quick Start'
- Removed emoji headings the AI added
- Verified the faceted chart chunk knits without warnings

More in [the Appendix](Appendix.md).
