USE travego;

SELECT * FROM Passenger;
SELECT * FROM Price;



-- a. How many female passengers traveled a minimum distance of 600 KMs?
 
 SELECT COUNT(*) AS FemalePassengerCount
 FROM Passenger 
 WHERE Gender = 'F' AND Distance >= 600;

-- b. Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus

SELECT * FROM Passenger 
WHERE Distance > 500 AND Bus_type = 'Sleeper';


-- c. Select passenger names whose names start with the character 'S'

SELECT Passenger_name 
FROM Passenger
WHERE Passenger_name LIKE 'S%';

-- d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, Destination City, Bus type, and Price in the output. 

SELECT Passenger.Passenger_name, Passenger.Boarding_city, Passenger.Destination_city, Passenger.Bus_type, Price.Price
FROM Passenger
INNER JOIN Price ON Passenger.Bus_type = Price.Bus_type AND Passenger.Distance = Price.Distance;


-- e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus? 


SELECT Passenger_name, Price
FROM Passenger
INNER JOIN Price ON Passenger.Bus_type = Price.Bus_type
WHERE Passenger.Distance = 1000 AND Passenger.Bus_type = 'Sitting';

#### NOT ENOUGH DATA 


-- f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji? 

SELECT * FROM passenger;
SELECT * FROM Price;


SELECT p1.passenger_name , p1.boarding_city , p1.Destination_city , p1.bus_type , p2.price
FROM passenger p1
INNER JOIN Price p2 on p1.bus_type = p2.bus_type
WHERE p1.passenger_name = 'Pallavi' 
	 AND p1.Boarding_city = 'Bangalore' 
	 AND p1.Destination_city = 'Panaji';

#### NOT ENOUGH DATA 

-- g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper

 UPDATE passenger SET Category = 'Non_AC'
 WHERE Bus_type = 'Sleeper';

-- TO Check 
SELECT category , bus_type FROM passenger
WHERE Bus_type = 'sleeper';

-- h. Delete an entry from the table where the passenger name is Piyush and commit this change in the database. 

DELETE FROM Passenger
WHERE Passenger_name = 'Piyush';

COMMIT;

-- i. Truncate the table passenger and comment on the number of rows in the table (explain if required). 

TRUNCATE TABLE Passenger;

SELECT * FROM passenger;

# There are no rows available in the passangers table because of the truncate function 
# After truncating the table, the number of rows in the table will be zero. 

-- j. Delete the table passenger from the database. 

DROP TABLE passenger;



