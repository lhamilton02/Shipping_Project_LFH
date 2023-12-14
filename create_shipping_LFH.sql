-- Create Database
CREATE DATABASE IF NOT EXISTS shipping;

-- Use Database
USE shipping;

-- Create Ports Table
CREATE TABLE Ports (
    PortID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL,
    Country VARCHAR(255) NOT NULL
);

-- Create Ships Table
CREATE TABLE Ships (
    ShipID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) UNIQUE NOT NULL,
    Displacement FLOAT NOT NULL,
    CaptainName VARCHAR(255) NOT NULL,
    Crew INT NOT NULL,
    HomePort INT NOT NULL,
    YearBuilt INT NOT NULL,
    FOREIGN KEY (HomePort) REFERENCES Ports(PortID)
);

-- Create Containers Table
CREATE TABLE Containers (
    ContainerID INT AUTO_INCREMENT PRIMARY KEY,
    Dimensions VARCHAR(255) NOT NULL,
    Weight FLOAT NOT NULL,
    ShipID INT,
    FOREIGN KEY (ShipID) REFERENCES Ships(ShipID)
);
