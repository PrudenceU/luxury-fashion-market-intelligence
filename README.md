# Luxury Fashion Market Intelligence

**Competitive pricing, product assortment and discount analysis | Farfetch France | 17 November 2023**

> Portfolio case study using a historical product-listing snapshot. This is not a live pricing tracker or sales analysis.

## Business question
How can luxury fashion intelligence teams use marketplace listing data to benchmark assortment, pricing and discounting across brands and product categories?

## Dataset
- **461,481** listings from Farfetch France, dated **17 November 2023**
- Categories: clothing (**291,236**), shoes (**81,975**), accessories (**53,809**), bags (**34,461**)
- Prices denominated in **EUR**; product-level listings, not sales transactions

## Tools and workflow
1. **Python:** cleaned the data, derived category and discount measures, and explored price/assortment patterns.
2. **PostgreSQL / SQL:** loaded the cleaned records and queried category and brand-level comparisons.
3. **Data Studio (formerly Looker Studio):** built an interactive report with three KPI cards, five charts, and category/brand filters.

## Findings
| Metric | Finding |
|---|---|
| Largest category | Clothing: ~63.1% of listings |
| Highest average selling price | Bags: €939.46 |
| Other category average prices | Clothing €670.01; shoes €507.39; accessories €314.46 |
| Overall average selling price | €619.79 |
| Overall discounted-listing rate | 28.27% |
| Category discount rates | Clothing 33.2%; shoes 27.82%; bags 13.74%; accessories 11.53% |
| Average discount depth (discounted listings only) | Clothing 35.93%; shoes 34.62%; accessories 32.44%; bags 30.99% |

## Business interpretation
- **Assortment benchmarking:** Clothing dominates the observed catalog, making it a major category to monitor.
- **Pricing benchmarks:** Compare prices within categories; bags have the highest category-level average listing price.
- **Promotion monitoring:** Category-level discount rates vary substantially, so a single aggregate rate can conceal differences.

These are potential uses of the analysis, not demonstrated causal explanations for pricing or promotions.

## Limitations
The dataset is one **historical snapshot**. It does not measure sales, demand, revenue, profit or trends over time. Brand averages may be influenced by product mix. Do not interpret these findings as current market prices. Dataset redistribution rights should be checked before uploading raw or cleaned data.

## Repository layout (suggested)
```text
luxury-fashion-market-intelligence/
├── README.md
├── notebooks/           # reviewed Python analysis notebook(s)
├── sql/                 # reviewed SQL analysis queries
├── dashboard/           # dashboard PDF and screenshots
└── reports/             # PDF case study
```

## Dashboard
Add your public, view-only Data Studio report link here once sharing permissions are checked. A static dashboard PDF can be placed in `dashboard/`.

## Data and reproducibility
The source is a Farfetch France listings snapshot dated 17 November 2023. Add a verified source URL and license/usage information before publishing. Avoid committing raw data, credentials, private file paths or files without confirmed redistribution rights.
