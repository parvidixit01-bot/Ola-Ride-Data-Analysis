CREATE DATABASE Ola;
USE Ola;
SELECT COUNT(*) FROM booking;

# 1. Retrieve all successful bookings:
CREATE VIEW Successful_bookings AS
SELECT *
FROM booking
WHERE `Booking Status` = 'Successful';

USE Ola;

CREATE VIEW Successful_bookings AS
SELECT *
FROM booking
WHERE `Booking Status` = 'Successful';

SELECT * FROM Successful_bookings;

# 2. Find the average ride distance for each vehicle type:
Create view ride_disatnce_for_each_vehicle As 
SELECT 
    `Vehicle Type`,
    AVG(`Ride Distance`) AS Avg_Ride_Distance
FROM booking
GROUP BY `Vehicle Type`;

Select * from ride_disatnce_for_each_vehicle;


#3. Get the total number of cancelled rides by customers:
CREATE VIEW cancelled_Rides_by_customer AS
SELECT *
FROM booking
WHERE `Booking Status` = 'Canceled Rides by Customer';

SELECT * FROM booking;

SELECT DISTINCT `Booking Status`
FROM booking;

SELECT SUM(`Cancelled Rides by Customer`) AS Total_Cancelled_By_Customer
FROM booking;

SELECT COUNT(*) AS Total_Cancelled
FROM booking
WHERE `Booking Status` = 'Cancelled Rides by Customer';

SELECT SUM(`Cancelled Rides by Customer`) AS Total_Cancelled_By_Customer
FROM booking;

#4. List the top 5 customers who booked the highest number of rides:
SELECT 
    `Customer ID`,
    COUNT(*) AS Total_Rides
FROM booking
GROUP BY `Customer ID`
ORDER BY Total_Rides DESC
LIMIT 5;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:

SELECT COUNT(*) AS Total_Driver_Cancellations
FROM booking
WHERE `Reason for cancelling by Driver` 
IN ('Personal Issue', 'Car Issue');

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

SELECT 
    MAX(`Driver Ratings`) AS Max_Rating,
    MIN(`Driver Ratings`) AS Min_Rating
FROM booking
WHERE `Vehicle Type` = 'Prime Sedan';

#7-Retrieve all rides paid using UPI
SELECT *
FROM booking
WHERE `Payment Method` = 'UPI';


#8. Find the average customer rating per vehicle type:
SELECT 
    `Vehicle Type`,
    ROUND(AVG(`Customer Rating`),2) AS Avg_Customer_Rating
FROM booking
GROUP BY `Vehicle Type`;


#9Calculate the total booking value of rides completed successfully:
SELECT 
    SUM(`Booking Value`) AS Total_Successful_Revenue
FROM booking
WHERE `Booking Status` = 'Successful';


#10-List all incomplete rides along with the reason:

SELECT 
    `Booking ID`,
    `Incomplete Rides`,
    `Incomplete Rides Reason`
FROM booking
WHERE `Booking Status` = 'Incomplete';

DESC booking;

how to save file in my sql 




