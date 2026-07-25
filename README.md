# Flipkart Sales Dashboard

A Power BI dashboard and business performance report built on 4,759 order-level transaction records from a Flipkart-style e-commerce dataset. The project covers revenue trends, category and geographic performance, payment & delivery analysis, and customer satisfaction — with a full company-ready PowerPoint report summarizing key insights.

## 📊 Project Overview

- **Data source**: `flipkart_cleaned.csv` — 4,759 orders, Jan 2023 – Dec 2024
- **Tech stack**: Excel, PostgreSQL, Python (Jupyter Notebook), Power BI, PowerPoint
- **Deliverables**:
  - Interactive Power BI dashboard (`.pbix`)
  - Executive PowerPoint report (`.pptx`)
  - Cleaned source dataset (`.csv`)
  - Data cleaning notebook (`.ipynb`)

## 🔄 Project Workflow

This project follows an end-to-end data pipeline, from raw data to final dashboard:

1. **Excel** — Initial raw data collection and manual review/formatting of order records
2. **PostgreSQL** — Structured storage of the raw dataset in a relational database (data saved and queried using SQL)
3. **Python (Jupyter Notebook)** — Data cleaning and preprocessing:
   - Handling missing/null values (e.g. blank ratings, "Unknown" categories)
   - Fixing data types (dates, decimals, whole numbers)
   - Removing duplicates and inconsistent entries
   - Exporting the cleaned dataset as `flipkart_cleaned.csv`
4. **Power BI** — Building the interactive dashboard:
   - Data modeling (DateTable, relationships)
   - DAX measures for KPIs (Total Revenue, AOV, Return Rate, etc.)
   - Charts, slicers, and visual design
5. **PowerPoint** — Summarizing dashboard insights into a company-ready business report

## 🗂️ Dataset Fields

| Column | Description |
|---|---|
| `order_id` | Unique order identifier |
| `order_date` | Date of order |
| `customer_id`, `customer_name` | Customer details |
| `city`, `state` | Delivery location |
| `product_id`, `product_name`, `category`, `sub_category` | Product details |
| `price`, `quantity`, `discount` | Pricing details |
| `payment_method` | Net Banking, Debit Card, COD, Credit Card, UPI |
| `delivery_status` | Delivered, Returned, Cancelled, Delayed |
| `rating` | Customer rating (1–5) |
| `total_amount` | Final order value |

## 📈 Key KPIs

| KPI | Value |
|---|---|
| Total Revenue | ₹51.98 Cr |
| Total Orders | 4,759 |
| Avg Order Value | ₹1,09,222 |
| Avg Customer Rating | 3.03 / 5 |
| Return Rate | 15.2% |

## 🔍 Key Insights

- Revenue is broad-based across all 6 categories (Electronics, Fashion, Beauty, Home & Kitchen, Books, Sports) — no single category dominates.
- **Gujarat** is the top-performing state (₹95.7M), followed by Maharashtra (₹82.5M) — together over 34% of total revenue.
- Only 41% of orders are marked "Delivered"; Returned, Delayed, and Cancelled combined make up ~45% of orders — the biggest opportunity for improvement.
- Average customer rating (3.03/5) signals a need to improve customer experience alongside revenue growth.
- April and August show consistent seasonal revenue peaks each year.

## 📁 Repository Structure

```
flipkart-sales-dashboard/
├── data/
│   ├── flipkart_raw.xlsx              # Original raw data (Excel)
│   └── flipkart_cleaned.csv           # Cleaned dataset used in Power BI
├── sql/
│   └── flipkart_schema.sql            # PostgreSQL table schema / queries
├── notebooks/
│   └── data_cleaning.ipynb            # Python (Jupyter) cleaning steps
├── dashboard/
│   └── Flipkart_Sales_Dashboard.pbix  # Power BI dashboard
├── report/
│   └── Flipkart_Sales_Performance_Report.pptx  # Executive summary report
└── README.md
```

## 🛠️ Dashboard Features

- 5 KPI cards: Total Revenue, Total Orders, Avg Order Value, Avg Rating, Return Rate
- Revenue trend line chart (monthly)
- Category-wise and state-wise revenue breakdown
- Payment method and delivery status distribution
- Top 10 products by revenue
- Rating distribution
- Interactive slicers: Year, Category, State

## 🚀 How to Use

1. Clone this repository
2. **(Optional) Recreate the database**: run `sql/flipkart_schema.sql` in PostgreSQL to load the raw data into a table
3. **(Optional) Re-run cleaning**: open `notebooks/data_cleaning.ipynb` in Jupyter to see/reproduce the cleaning steps
4. Open `dashboard/Flipkart_Sales_Dashboard.pbix` in Power BI Desktop
5. Refresh the data source path if needed to point to `data/flipkart_cleaned.csv`
6. Explore the interactive dashboard using slicers (Year, Category, State)

## 📄 License

This project uses a sample/synthetic dataset for educational and portfolio purposes.
