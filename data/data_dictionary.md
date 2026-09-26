# Data Dictionary — OLA Bengaluru Bookings Dataset

**Scope:** ~100,000 synthetic ride bookings for Bengaluru city, covering July 1–30, 2024.

| Column | Type | Description |
|---|---|---|
| `Date` | Date | Date of the booking (July 2024) |
| `Time` | Time | Time the booking was made |
| `Booking_ID` | Text | Unique 10-digit ID, prefixed `CNR` (e.g. `CNR1234567`) |
| `Booking_Status` | Categorical | `Success`, `Cancelled by Customer`, `Cancelled by Driver`, `Driver Not Found` |
| `Customer_ID` | Text | Unique customer identifier |
| `Vehicle_Type` | Categorical | Auto, Prime Plus, Prime Sedan, Mini, Bike, eBike, Prime SUV |
| `Pickup_Location` | Categorical | One of 50 dummy Bengaluru areas |
| `Drop_Location` | Categorical | Drawn from the same 50 dummy pickup locations |
| `V_TAT` | Numeric | Avg. time (minutes) for the vehicle to arrive at pickup |
| `C_TAT` | Numeric | Avg. time (minutes) for the customer to reach the vehicle |
| `Cancelled_Rides_by_Customer` | Categorical | Reason customer cancelled (see below), blank if N/A |
| `Cancelled_Rides_by_Driver` | Categorical | Reason driver cancelled (see below), blank if N/A |
| `Incomplete_Rides` | Yes/No | Whether the ride was marked incomplete |
| `Incomplete_Rides_Reason` | Categorical | Reason for incompletion (see below), blank if N/A |
| `Booking_Value` | Numeric (₹) | Fare value of the ride |
| `Payment_Method` | Categorical | Cash, UPI, Credit Card, Debit Card |
| `Ride_Distance` | Numeric (km) | Distance covered |
| `Driver_Ratings` | Numeric (1–5) | Rating given to the driver, blank if ride not successful |
| `Customer_Rating` | Numeric (1–5) | Rating given to the customer, blank if ride not successful |

---

## Categorical Value Breakdown

### Vehicle_Type
- Auto
- Prime Plus
- Prime Sedan
- Mini
- Bike
- eBike
- Prime SUV

### Cancelled_Rides_by_Customer (reasons)
- Driver is not moving towards pickup location
- Driver asked to cancel
- AC is not working *(4-wheelers only)*
- Change of plans
- Wrong Address

### Cancelled_Rides_by_Driver (reasons)
- Personal & Car related issues
- Customer related issue
- The customer was coughing/sick
- More than permitted people in the vehicle

### Incomplete_Rides_Reason
- Customer Demand
- Vehicle Breakdown
- Other Issue

---

## Data Generation Rules

| Rule | Value |
|---|---|
| Overall booking success rate | 62% |
| Customer cancellation rate | ≤ 7% |
| Driver cancellation rate | ≤ 18% |
| Incomplete ride rate | < 6% |
| Booking ID format | 10 digits, prefixed `CNR` |
| Orders under ₹500 | 70% of bookings |
| Orders ₹500–₹1000 | 28% of bookings |
| Orders above ₹1000 | Remaining bookings |
| Weekend / match-day volume | Increased vs. weekdays |
| Weekend order value | Higher than weekdays |

> Ratings, fare, V_TAT, and C_TAT are only populated when `Booking_Status = Success`.

---

## Source

Dataset generated via a structured ChatGPT prompt (see original project brief) rather than pulled from live OLA systems. Intended for learning and portfolio purposes only.
