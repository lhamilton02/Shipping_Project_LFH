-- Insert data into Ports
INSERT INTO Ports (Name, City, Country) VALUES
('PortLosAngeles', 'LosAngeles', 'USA'),
('PortBusan', 'Busan', 'SouthKorea'),
('PortShanghai', 'Shanghai', 'China'),
('PortSydney', 'Sydney', 'Australia'),
('PortSantos', 'Santos', 'Brazil');

-- Insert data into Ships
INSERT INTO Ships (Name, Displacement, CaptainName, Crew, HomePort, YearBuilt) VALUES
('OceanQueen', 120000, 'Captain Smith', 150, 4, 2015),
('JohnsonStar', 80000, 'Captain Johnson', 100, 4, 2012),
('PacificKim', 150000, 'Captain Kim', 200, 1, 2017),
('AndersonHauler', 100000, 'Captain Anderson', 120, 2, 2014),
('NorthernStar', 130000, 'Captain George', 180, 4, 2016),
('PolarBear', 90000, 'Captain Jacob', 110, 3, 2013),
('IndianVoyager', 110000, 'Captain John', 160, 4, 2018),
('ArcticRunner', 95000, 'Captain Jingle', 130, 3, 2011),
('BalticFreighter', 135000, 'Captain Schmidt', 190, 4, 2019),
('IndianExplorer', 85000, 'Captain Leah', 105, 5, 2010);

-- Insert data into Containers
INSERT INTO Containers (Dimensions, Weight, ShipID) VALUES
('20x8x8', 25000, 1),
('10x8x8', 12000, 2),
('40x8x9', 40000, 3),
('15x6x6', 8000, 4),
('25x10x10', 35000, 5),
('12x6x6', 10000, 6),
('30x8x8', 30000, 7),
('18x8x8', 15000, 8),
('35x10x10', 38000, 9),
('8x6x6', 6000, 10),
('22x8x8', 28000, 1),
('11x8x8', 14000, 2),
('45x10x10', 42000, 3),
('20x8x8', 9000, 4),
('32x10x10', 37000, 5),
('16x6x6', 11000, 6),
('38x8x8', 32000, 7),
('25x8x8', 17000, 8),
('40x10x10', 40000, 9),
('10x6x6', 5000, 10);
