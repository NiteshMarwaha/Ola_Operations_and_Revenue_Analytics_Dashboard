-- ============================================
-- OLA Data Analyst Project - SQL Views
-- Database: Ola
-- ============================================

CREATE DATABASE Ola;
USE Ola;

-- 1. Retrieve all successful bookings
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

-- 2. Average ride distance for each vehicle type
CREATE VIEW Ride_Distance_For_Each_Vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

-- 3. Total number of cancelled rides by customers
CREATE VIEW Cancelled_Rides_By_Customers AS
SELECT COUNT(*) AS total_cancelled_by_customer
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer';

-- 4. Top 5 customers who booked the highest number of rides
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

-- 5. Rides cancelled by drivers due to personal and car-related issues
CREATE VIEW Rides_Cancelled_By_Drivers_P_C_Issues AS
SELECT COUNT(*) AS total_driver_cancelled_personal_car
FROM bookings
WHERE Cancelled_Rides_by_Driver = 'Personal & Car related issue';

-- 6. Max and min driver ratings for Prime Sedan bookings
CREATE VIEW Max_Min_Driver_Rating AS
SELECT
    MAX(Driver_Ratings) AS max_rating,
    MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

-- 7. All rides where payment was made using UPI
CREATE VIEW UPI_Payment AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

-- 8. Average customer rating per vehicle type
CREATE VIEW Avg_Cust_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

-- 9. Total booking value of rides completed successfully
CREATE VIEW Total_Successful_Ride_Value AS
SELECT SUM(Booking_Value) AS total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';

-- 10. All incomplete rides along with the reason
CREATE VIEW Incomplete_Rides_Reason_View AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

-- ============================================
-- Retrieve results from all views
-- ============================================

SELECT * FROM Successful_Bookings;
SELECT * FROM Ride_Distance_For_Each_Vehicle;
SELECT * FROM Cancelled_Rides_By_Customers;
SELECT * FROM Top_5_Customers;
SELECT * FROM Rides_Cancelled_By_Drivers_P_C_Issues;
SELECT * FROM Max_Min_Driver_Rating;
SELECT * FROM UPI_Payment;
SELECT * FROM Avg_Cust_Rating;
SELECT * FROM Total_Successful_Ride_Value;
SELECT * FROM Incomplete_Rides_Reason_View;
