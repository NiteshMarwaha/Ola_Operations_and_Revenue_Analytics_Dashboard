# 🚕 OLA Data Analyst Project — Bengaluru Ride Bookings Analysis

An end-to-end data analytics project analyzing 1 month (July 2026) of OLA ride booking data for Bengaluru city, using **SQL** for data querying and **Power BI** for dashboarding and visualization.

---

## 📌 Project Overview

This project simulates a real-world data analyst workflow for a ride-hailing company (OLA):
- Generating a realistic synthetic dataset of ~100,000 bookings
- Writing SQL queries to answer key business questions
- Building an interactive multi-page Power BI dashboard to track bookings, cancellations, revenue, operations, and customer/driver ratings

---

## 🗂️ Dataset

| Attribute | Details |
|---|---|
| City | Bengaluru |
| Time Period | July 1 – July 30, 2026 |
| Total Records | ~99,952 bookings |
| Format | CSV / SQL table |

**Columns:**

`Date`, `Time`, `Booking_ID`, `Booking_Status`, `Customer_ID`, `Vehicle_Type`, `Pickup_Location`, `Drop_Location`, `V_TAT` (Vehicle Time to Arrive), `C_TAT` (Customer Time to Arrive), `Cancelled_Rides_by_Customer`, `Cancelled_Rides_by_Driver`, `Incomplete_Rides`, `Incomplete_Rides_Reason`, `Booking_Value`, `Payment_Method`, `Ride_Distance`, `Driver_Ratings`, `Customer_Rating`

**Vehicle types:** Auto, Prime Plus, Prime Sedan, Mini, Bike, eBike, Prime SUV

**Data generation rules:**
- Overall booking success rate: 62%
- Customer cancellation rate: ≤ 7%
- Driver cancellation rate: ≤ 18%
- Incomplete ride rate: < 6%
- Higher order volume and value on weekends/match days
- Booking IDs: 10-digit codes prefixed with `CNR`

---

## 🛠️ Tools Used

- **SQL** (MySQL) — data querying, view creation, aggregation
- **Power BI** — dashboard design and DAX-based KPIs
- **Excel / ChatGPT** — synthetic data generation

---

## 📊 Dashboard Pages

The Power BI report contains 5 pages, each focused on a specific business area:

### 1. Executive Summary
Total Bookings, Total Revenue, Completion Rate, Avg Ride Value, bookings by status, revenue by vehicle type, top 5 pickup locations, and booking trend over time.

### 2. Bookings & Cancellation
Total cancellations, cancellations by customer vs. driver, cancellation rate, cancellations by hour/day/vehicle type, top cancellation locations, and cancellation reasons.

### 3. Revenue Analytics
Revenue per KM, total revenue, lost revenue, avg ride value, revenue and completed bookings by day, revenue by vehicle type/payment method, and top pickup locations by revenue.

### 4. Operations & TAT Analysis
Avg Vehicle TAT, Avg Customer TAT, TAT gap, incomplete ride rate, TAT by pickup location, and TAT trends by day and hour.

### 5. Ratings & Customer Experience
Avg driver/customer ratings, rating difference, % bad rides, ratings by vehicle type and day, worst-rated pickup locations, and rating bands vs. bookings.

*(Screenshots in `/powerbi/screenshots`)*

---

## 📈 Key Metrics (from dashboard)

| Metric | Value |
|---|---|
| Total Bookings | 99,952 |
| Total Revenue | ₹34.0M |
| Completion Rate | 62% |
| Avg Ride Value | ₹548 |
| Total Cancellations | 38K (17.9K by customer, 10.2K by driver) |
| Incomplete Ride Rate | 3.82% |
| Avg Driver Rating | 4.00 |
| Avg Customer Rating | 4.00 |

---

## 🔍 Key Insights

- **Completion rate sits at 62%**, with cancellations (38K total) representing a significant share of demand loss — customer cancellations (17.9K) outnumber driver cancellations (10.2K).
- **UPI and Cash are the dominant payment methods**, together accounting for over 90% of revenue.
- **Revenue is fairly evenly distributed across vehicle types** (₹4.7M–5.1M each), despite differences in booking volume, suggesting pricing is balanced across the fleet.
- **TAT (turnaround time) is consistent across pickup locations**, averaging ~171 minutes for vehicle arrival and ~85 minutes for customer arrival, with no major outlier zones.
- **Driver and customer ratings are stable at ~4.00** with low variance — a known characteristic of synthetically generated data.

---

## 🗃️ SQL Highlights

Sample business questions answered via SQL (full queries in `/sql`):

- Retrieve all successful bookings
- Average ride distance per vehicle type
- Top 5 customers by ride count
- Cancellation breakdown by driver reason
- Max/min driver ratings for Prime Sedan
- Total booking value of successful rides
- Incomplete rides with reasons

---

## 📁 Repository Structure

```
ola-data-analyst-project/
├── README.md
├── data/
│   └── `data_dictionary.md`
├── sql/
│   ├── create_views.sql
│   └── sql_questions_answers.md
├── powerbi/
│   ├── ola.pbix
│   └── screenshots/
|       └── 1_ola_executive_summary.png
|       └── 2_bookings_and_cancellation_analysis.png
|       └── 3_revenue_analysis.png
|       └── 4_operations_and_tat_analysis.png
|       └── 5_ratings_and_customer_experience.png
└── insights/
    └── key_findings.md
```

---

## 🚀 How to Reproduce

1. Generate or download the dataset (see `/data/data_dictionary.md` for schema)
2. Load the dataset into MySQL and run `sql/create_views.sql`
3. Open `powerbi/OLA_Dashboard.pbix` in Power BI Desktop and connect it to the dataset
4. Refresh the data model to rebuild visuals

---

## ⚠️ Limitations

This dataset is **synthetically generated** (not real OLA data) for learning/portfolio purposes. Ratings and some distributions are intentionally uniform and may not reflect real-world variance.

---

## 🙏 Credits

Project Data is from **Top Varsity**.

---

## 📬 Contact

Feel free to connect or reach out if you have feedback or questions about this project.
