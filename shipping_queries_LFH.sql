USE shipping;

-- Select ships and their home ports
SELECT Ships.Name AS ShipName, Ports.Name AS HomePort
FROM Ships
JOIN Ports ON Ships.HomePort = Ports.PortID;

-- Count the number of ships in each home port
SELECT Ports.Name AS HomePort, COUNT(Ships.Name) AS NumberOfShips
FROM Ports
LEFT JOIN Ships ON Ports.PortID = Ships.HomePort
GROUP BY Ports.Name;

-- List the containers and their corresponding ships (subquery)
SELECT ContainerID, Dimensions, Weight,
       (SELECT Name FROM Ships WHERE ShipID = Containers.ShipID) AS ShipName
FROM Containers;

--  Calculate the total weight of containers on each ship
SELECT Ships.Name AS ShipName, SUM(Containers.Weight) AS TotalWeight
FROM Ships
LEFT JOIN Containers ON Ships.ShipID = Containers.ShipID
GROUP BY Ships.Name;

-- Find the ports with no ships
SELECT Ports.Name AS PortName
FROM Ports
LEFT JOIN Ships ON Ports.PortID = Ships.HomePort
WHERE Ships.Name IS NULL;

-- List the containers with their dimensions and calculated volume
SELECT ContainerID, Dimensions,
       SUBSTRING_INDEX(Dimensions, 'x', 1) *
       SUBSTRING_INDEX(SUBSTRING_INDEX(Dimensions, 'x', -2), 'x', 1) *
       SUBSTRING_INDEX(Dimensions, 'x', -1) AS Volume
FROM Containers;

-- Retrieve the ships, containers, and their corresponding ports
SELECT Ships.Name AS ShipName, Containers.ContainerID, Ports.Name AS HomePort
FROM Ships
JOIN Containers ON Ships.ShipID = Containers.ShipID
JOIN Ports ON Ships.HomePort = Ports.PortID;


-- Display containers, ships, and their home ports with conditions
SELECT Containers.ContainerID, Containers.Dimensions, Ships.Name AS ShipName, Ports.Name AS HomePort
FROM Containers
JOIN Ships ON Containers.ShipID = Ships.ShipID
JOIN Ports ON Ships.HomePort = Ports.PortID
WHERE Containers.Weight > 5000 AND Ships.YearBuilt > 2010
LIMIT 0, 1000;


-- Aggregate query to find the average crew size by home port
SELECT Ports.Name AS HomePort, AVG(Ships.Crew) AS AvgCrewSize
FROM Ports
JOIN Ships ON Ports.PortID = Ships.HomePort
GROUP BY Ports.Name;

-- Joining all three tables 
SELECT Containers.ContainerID, Containers.Dimensions, Containers.Weight,
       Ships.Name AS ShipName, Ships.CaptainName, Ships.Crew,
       Ports.Name AS HomePort, Ports.City, Ports.Country
FROM Containers
JOIN Ships ON Containers.ShipID = Ships.ShipID
JOIN Ports ON Ships.HomePort = Ports.PortID
LIMIT 0, 1000;


SHOW TABLES FROM shipping;
DESCRIBE shipping.ports;
SELECT * FROM shipping.ports;
DESCRIBE shipping.containers;
SELECT * FROM shipping.containers;
DESCRIBE shipping.ships;
SELECT * FROM shipping.ships;



