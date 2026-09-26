# SQL Questions & Answers — OLA Data Analyst Project

Database: `Ola` | Table: `bookings`

---

### 1. Retrieve all successful bookings

```sql
SELECT * FROM bookings
WHERE Booking_Status = 'Success';
```

---

### 2. Find the average ride distance for each vehicle type

```sql
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;
```

---

### 3. Get the total number of cancelled rides by customers

```sql
SELECT COUNT(*) AS total_cancelled_by_customer
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer';
```

---

### 4. List the top 5 customers who booked the highest number of rides

```sql
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;
```

---

### 5. Get the number of rides cancelled by drivers due to personal and car-related issues

```sql
SELECT COUNT(*) AS total_driver_cancelled_personal_car
FROM bookings
WHERE Cancelled_Rides_by_Driver = 'Personal & Car related issue';
```

---

### 6. Find the maximum and minimum driver ratings for Prime Sedan bookings

```sql
SELECT
    MAX(Driver_Ratings) AS max_rating,
    MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';
```

---

### 7. Retrieve all rides where payment was made using UPI

```sql
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';
```

---

### 8. Find the average customer rating per vehicle type

```sql
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;
```

---

### 9. Calculate the total booking value of rides completed successfully

```sql
SELECT SUM(Booking_Value) AS total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';
```

---

### 10. List all incomplete rides along with the reason

```sql
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';
```

---

## Notes

- All queries above are also implemented as reusable **views** in [`create_views.sql`](./create_views.sql), following the pattern:
  `CREATE VIEW view_name AS SELECT ...` then `SELECT * FROM view_name;`
- Views make the queries reusable across the Power BI dashboard and any future ad-hoc analysis without rewriting logic.
