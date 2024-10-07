CREATE DATABASE task;
USE  task;
CREATE TABLE AIRPORT_DETAILS (Airport_ID INT ,
    Airport_Name VARCHAR(35),
    City VARCHAR(25),
    Country VARCHAR(30),
    Terminal_Count INT,
    Passenger_Capacity INT,
    Parking_Capacity INT,
    Number_of_Gates_In_Airport INT,
    Number_of_Shops INT,
    Number_of_Restaurants INT);
    DESC AIRPORT_DETAILS;
    SELECT * FROM AIRPORT_DETAILS;
INSERT INTO AIRPORT_DETAILS VALUES(1, 'Kempegowda International Airport ', 'Bengaluru', 'India', 9, 80000000, 15000, 132, 50, 60),
(2, 'Rajiv Gandhi International Airport', 'Hyderbad', 'India', 5, 76000000, 12000, 140, 60, 70),
(3, 'Changi Airport', 'Singapore', 'Singapore', 4, 68000000, 10000, 120, 55, 65),
(4, 'Tokyo Haneda', 'Tokyo', 'Japan', 3, 85000000, 11000, 100, 45, 50),
(5, 'Charles de Gaulle', 'Paris', 'France', 4, 72000000, 13000, 150, 60, 80),
(6, 'Dubai International', 'Dubai', 'UAE', 3, 90000000, 20000, 180, 80, 90),
(7, 'Hartsfield-Jackson', 'Atlanta', 'USA', 2, 107000000, 30000, 190, 100, 85),
(8, 'Frankfurt Airport', 'Frankfurt', 'Germany', 2, 69000000, 14000, 130, 40, 45),
(9, 'Madrid-Barajas', 'Madrid', 'Spain', 4, 58000000, 16000, 110, 35, 40),
(10, 'Sydney Kingsford Smith', 'Sydney', 'Australia', 3, 44000000, 8000, 85, 25, 35),
(11, 'Toronto Pearson', 'Toronto', 'Canada', 2, 50000000, 10000, 90, 30, 40),
(12, 'Chennai International Airport', 'Chennai', 'India', 2, 71000000, 12000, 115, 50, 55);

SELECT * FROM AIRPORT_DETAILS WHERE Country = 'India' AND Passenger_Capacity = 76000000 AND Terminal_Count >= 5;
SELECT * FROM AIRPORT_DETAILS WHERE Country IN ('India', 'Japan', 'Singapore') AND Number_of_Shops > 50 AND Number_of_Restaurants > 60;
SELECT * FROM AIRPORT_DETAILS WHERE (Country = 'India' OR Country = 'Japan');
SELECT * FROM AIRPORT_DETAILS WHERE Country NOT IN ('India');
CREATE TABLE OLYMPIC_GAMES (Game_ID INT ,
    Game_Season VARCHAR(10),
    Host_City VARCHAR(50),
    Host_Country VARCHAR(50),
    Number_of_Participating_Countries INT,
    Number_of_Athletes INT,
    Number_of_Sports INT,
    Number_of_Medals_Awarded INT,
    Number_of_Events INT,
    Total_Ticket_Sales INT);
    DESC  OLYMPIC_GAMES;
    SELECT * FROM OLYMPIC_GAMES;
INSERT INTO OLYMPIC_GAMES VALUES(1, 'Summer', 'Tokyo', 'Japan', 205, 11091, 33, 339, 339, 5000000),
(2, 'Winter', 'Beijing', 'China', 91, 2892, 15, 327, 109, 3000000),
(3, 'Summer', 'Bengaluru', 'India', 207, 11238, 28, 306, 306, 6500000),
(4, 'Winter', 'Chennai', 'India', 92, 2920, 15, 317, 102, 1500000),
(5, 'Summer', 'London', 'UK', 204, 10568, 26, 302, 302, 8400000),
(6, 'Winter', 'Sochi', 'Russia', 88, 2873, 15, 295, 98, 1400000),
(7, 'Summer', 'Beijing', 'China', 204, 10942, 28, 302, 302, 7000000),
(8, 'Winter', 'Vancouver', 'Canada', 82, 2566, 15, 258, 86, 1900000),
(9, 'Summer', 'Athens', 'Greece', 201, 10625, 28, 301, 301, 5200000),
(10, 'Winter', 'Turin', 'Italy', 80, 2508, 15, 252, 84, 1200000),
(11, 'Summer', 'Sydney', 'Australia', 199, 10651, 28, 300, 300, 6200000),
(12, 'Winter', 'Nagano', 'Japan', 72, 2302, 14, 227, 68, 1100000);
SELECT * FROM OLYMPIC_GAMES;
SELECT * FROM OLYMPIC_GAMES WHERE Game_Season = 'Summer' AND Host_Country = 'UK';
SELECT * FROM OLYMPIC_GAMES WHERE Host_Country = 'India' OR Host_Country = 'Japan';
SELECT * FROM OLYMPIC_GAMES WHERE Host_Country IN ('India', 'China', 'UK');
SELECT * FROM OLYMPIC_GAMES WHERE Host_Country NOT IN ('India', 'Japan');


