# Key Findings — OLA Bengaluru Bookings Analysis (July 2024)

## 1. Booking Volume & Completion
- **99,952 total bookings** were placed over the 30-day period, averaging ~3,330 bookings/day.
- **Completion (success) rate is 62.08%** — in line with the target design rate, but it means over a third of demand does not convert into a completed ride.
- **38K bookings (38%) ended in cancellation or incompletion**, split as:
  - 17.9K (17.9%) cancelled by customer
  - 10.2K (10.2%) cancelled by driver
  - 9.83K (9.8%) driver not found
  - ~3.8% incomplete after being accepted

**Takeaway:** Customer-side cancellations are the single largest source of lost bookings — nearly double the driver cancellation rate. This points to a potential gap in ETA accuracy or driver-matching speed shown to customers before they cancel.

---

## 2. Revenue
- **Total revenue: ₹34.0M**, with an **average ride value of ₹548**.
- Revenue is **evenly spread across vehicle types** (₹4.7M–₹5.1M each), despite Prime Sedan carrying a noticeably higher per-ride value (₹556 avg) than Auto/Bike/eBike (~₹545–550).
- **Lost revenue is estimated at ₹21M** — roughly 62% of potential revenue if every booking had completed, underscoring how much cancellations cost the platform.
- **UPI and Cash dominate payment methods**, together making up ~95% of transaction value (UPI ~55%, Cash ~40%), with cards playing a minor role (~4–5% combined).

**Takeaway:** Revenue per vehicle type is well-balanced, suggesting pricing/allocation across the fleet is healthy. The bigger lever for revenue growth is reducing the cancellation/incompletion rate rather than rebalancing vehicle mix.

---

## 3. Operations (TAT)
- **Average Vehicle TAT (time to reach pickup): 171 minutes**
- **Average Customer TAT (time to reach vehicle): 85 minutes**
- TAT is **consistent across pickup locations and vehicle types**, with no single location showing an outsized TAT gap (~86 minutes company-wide).
- **Incomplete ride rate sits at 3.82%**, within the target design threshold (<6%).

**Takeaway:** Operational timing looks stable at a city level. If cancellation reduction is a priority, TAT data doesn't point to a specific bottlenecked zone — the cause is more likely tied to the specific cancellation *reasons* captured (e.g. "driver not moving towards pickup," "driver asked to cancel").

---

## 4. Ratings & Customer Experience
- **Average driver rating: 4.00 | Average customer rating: 4.00** — nearly identical, with a rating difference of just -0.052%.
- **6 drivers fall into the "Poor" rating band**, and **~0.63% of rides are flagged as "bad"**.
- The **majority of bookings (52K) fall in the "Poor" rating band** by volume — worth noting this reflects the volume-weighted distribution rather than rating quality itself, and may be an artifact of how rating bands were bucketed in the synthetic data.
- No strong correlation is visible between V_TAT and driver rating in the scatter plot — long TAT doesn't consistently predict lower ratings.

**Takeaway:** Ratings are stable and tightly clustered around 4.00, which is typical of synthetic/simulated data rather than a real, more variable ratings distribution. In a real dataset, this would be a good area to test whether TAT or cancellation history correlates with rating decay.

---

## Summary of Opportunities (if this were a real business)
1. **Reduce customer-initiated cancellations** — the largest single leak in the funnel (17.9K, 17.9%).
2. **Investigate "Driver Not Found" cases (9.8%)** — likely a supply/demand mismatch in specific time windows or zones.
3. **Recover lost revenue (~₹21M)** by targeting the top cancellation locations and reasons directly (see Top 5 Cancellation Pickup Locations and Cancellation by Reason visuals).
4. **Monitor poor-rated drivers (6 flagged)** proactively rather than reactively, since driver rating quality directly affects repeat bookings.

---

*Note: This dataset is synthetically generated for learning purposes, so findings above are illustrative of the analysis process rather than reflective of OLA's real-world operations.*
