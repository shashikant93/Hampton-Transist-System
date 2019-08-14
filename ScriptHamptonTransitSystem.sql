/*
Final DBMS Project
*/

DROP DATABASE IF EXISTS Hampton_Transit_Sytem;
CREATE DATABASE IF NOT EXISTS Hampton_Transit_Sytem;
USE Hampton_Transit_Sytem;

Select 
'Hampton_Transit_Sytem
FINAL PROJECT
DATABASE MANAGEMENT SYSTEM
TEAM MEMBERS: Tiara Miller, 
		Shashikant Prajapati,
		Min Hong,
		Allesandro Araujo,
		Mesut Kurnaz' as PROJECT_DETAILS;

CREATE TABLE Station (
Station_Name VARCHAR(25) NOT NULL PRIMARY KEY,
Category ENUM('Grade-1','Grade-2') NOT NULL
);

CREATE TABLE Station_location (
Station_Name VARCHAR(25) NOT NULL PRIMARY KEY,
Location_X INT NOT NULL,
Location_Y INT NOT NULL,
Location_Z INT NOT NULL,
FOREIGN KEY(Station_Name) REFERENCES station(Station_Name)
);

CREATE TABLE Station_bus_transfer (
Station_Name VARCHAR(25) NOT NULL PRIMARY KEY,
Bus_Transfer ENUM('Transfer Available','No Transfer '),
FOREIGN KEY(Station_Name) REFERENCES station(Station_Name)
);

CREATE TABLE Station_connections (
Station_Name VARCHAR(25) NOT NULL PRIMARY KEY,
Connect_To_A ENUM('Connection Available','No Connection'),
Connect_To_B ENUM('Connection Available','No Connection'),
Connect_To_C ENUM('Connection Available','No Connection'),
FOREIGN KEY(Station_Name) REFERENCES station(Station_Name)
);


INSERT INTO station VALUES('A1','Grade-1');
INSERT INTO station VALUES('A2','Grade-2');
INSERT INTO station VALUES('A3','Grade-2');
INSERT INTO station VALUES('A4','Grade-2');
INSERT INTO station VALUES('A5','Grade-1');
INSERT INTO station VALUES('A6','Grade-2');
INSERT INTO station VALUES('A7','Grade-2');
INSERT INTO station VALUES('A8','Grade-2');
INSERT INTO station VALUES('A9','Grade-1');

INSERT INTO station VALUES('B1','Grade-1');
INSERT INTO station VALUES('B2','Grade-2');
INSERT INTO station VALUES('B3','Grade-1');
INSERT INTO station VALUES('B4','Grade-2');
INSERT INTO station VALUES('B5','Grade-1');
INSERT INTO station VALUES('B6','Grade-2');
INSERT INTO station VALUES('B7','Grade-1');
INSERT INTO station VALUES('B8','Grade-2');
INSERT INTO station VALUES('B9','Grade-1');

INSERT INTO station VALUES('C1','Grade-1');
INSERT INTO station VALUES('C2','Grade-1');
INSERT INTO station VALUES('C3','Grade-2');
INSERT INTO station VALUES('C4','Grade-1');
INSERT INTO station VALUES('C5','Grade-1');
INSERT INTO station VALUES('C6','Grade-1');
INSERT INTO station VALUES('C7','Grade-2');
INSERT INTO station VALUES('C8','Grade-1');
INSERT INTO station VALUES('C9','Grade-1');

INSERT INTO station_location VALUES('A1',0,0,5);
INSERT INTO station_location VALUES('A2',0,5,5);
INSERT INTO station_location VALUES('A3',0,10,5);
INSERT INTO station_location VALUES('A4',0,15,5);
INSERT INTO station_location VALUES('A5',0,20,5);
INSERT INTO station_location VALUES('A6',0,25,5);
INSERT INTO station_location VALUES('A7',0,30,5);
INSERT INTO station_location VALUES('A8',0,35,5);
INSERT INTO station_location VALUES('A9',0,40,5);

INSERT INTO station_location VALUES('B1',10,0,15);
INSERT INTO station_location VALUES('B2',10,5,15);
INSERT INTO station_location VALUES('B3',10,10,15);
INSERT INTO station_location VALUES('B4',10,15,15);
INSERT INTO station_location VALUES('B5',10,20,15);
INSERT INTO station_location VALUES('B6',10,25,15);
INSERT INTO station_location VALUES('B7',10,30,15);
INSERT INTO station_location VALUES('B8',10,35,15);
INSERT INTO station_location VALUES('B9',10,40,15);

INSERT INTO station_location VALUES('C1',20,0,25);
INSERT INTO station_location VALUES('C2',20,5,25);
INSERT INTO station_location VALUES('C3',20,10,25);
INSERT INTO station_location VALUES('C4',20,15,25);
INSERT INTO station_location VALUES('C5',20,20,25);
INSERT INTO station_location VALUES('C6',20,25,25);
INSERT INTO station_location VALUES('C7',20,30,25);
INSERT INTO station_location VALUES('C8',20,35,25);
INSERT INTO station_location VALUES('C9',20,40,25);

INSERT INTO station_bus_transfer VALUES('A1','Transfer Available');
INSERT INTO station_bus_transfer VALUES('A2','No Transfer ');
INSERT INTO station_bus_transfer VALUES('A3','No Transfer ');
INSERT INTO station_bus_transfer VALUES('A4','Transfer Available');
INSERT INTO station_bus_transfer VALUES('A5','Transfer Available');
INSERT INTO station_bus_transfer VALUES('A6','Transfer Available');
INSERT INTO station_bus_transfer VALUES('A7','No Transfer ');
INSERT INTO station_bus_transfer VALUES('A8','No Transfer ');
INSERT INTO station_bus_transfer VALUES('A9','Transfer Available');

INSERT INTO station_bus_transfer VALUES('B1','Transfer Available');
INSERT INTO station_bus_transfer VALUES('B2','Transfer Available');
INSERT INTO station_bus_transfer VALUES('B3','Transfer Available');
INSERT INTO station_bus_transfer VALUES('B4','No Transfer ');
INSERT INTO station_bus_transfer VALUES('B5','No Transfer ');
INSERT INTO station_bus_transfer VALUES('B6','Transfer Available');
INSERT INTO station_bus_transfer VALUES('B7','Transfer Available');
INSERT INTO station_bus_transfer VALUES('B8','No Transfer ');
INSERT INTO station_bus_transfer VALUES('B9','Transfer Available');

INSERT INTO station_bus_transfer VALUES('C1','Transfer Available');
INSERT INTO station_bus_transfer VALUES('C2','Transfer Available');
INSERT INTO station_bus_transfer VALUES('C3','No Transfer ');
INSERT INTO station_bus_transfer VALUES('C4','Transfer Available');
INSERT INTO station_bus_transfer VALUES('C5','Transfer Available');
INSERT INTO station_bus_transfer VALUES('C6','Transfer Available');
INSERT INTO station_bus_transfer VALUES('C7','No Transfer ');
INSERT INTO station_bus_transfer VALUES('C8','Transfer Available');
INSERT INTO station_bus_transfer VALUES('C9','Transfer Available');

INSERT INTO station_connections VALUES('A1','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('A2','Connection Available','No Connection','Connection Available');
INSERT INTO station_connections VALUES('A3','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('A4','Connection Available','No Connection','Connection Available');
INSERT INTO station_connections VALUES('A5','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('A6','Connection Available','No Connection','Connection Available');
INSERT INTO station_connections VALUES('A7','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('A8','Connection Available','No Connection','Connection Available');
INSERT INTO station_connections VALUES('A9','Connection Available','Connection Available','Connection Available');

INSERT INTO station_connections VALUES('B1','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('B2','No Connection','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('B3','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('B4','No Connection','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('B5','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('B6','No Connection','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('B7','Connection Available','Connection Available','No Connection');
INSERT INTO station_connections VALUES('B8','No Connection','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('B9','Connection Available','Connection Available','Connection Available');

INSERT INTO station_connections VALUES('C1','No Connection','No Connection','Connection Available');
INSERT INTO station_connections VALUES('C2','Connection Available','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('C3','No Connection','No Connection','Connection Available');
INSERT INTO station_connections VALUES('C4','Connection Available','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('C5','No Connection','No Connection','Connection Available');
INSERT INTO station_connections VALUES('C6','Connection Available','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('C7','No Connection','No Connection','Connection Available');
INSERT INTO station_connections VALUES('C8','Connection Available','Connection Available','Connection Available');
INSERT INTO station_connections VALUES('C9','Connection Available','Connection Available','Connection Available');


CREATE TABLE Train (
Train_Name VARCHAR(25) NOT NULL PRIMARY KEY,
Begin_Station VARCHAR(25) NOT NULL,
End_Station VARCHAR(25) NOT NULL,
Car_Count INT NOT NULL,
Local_Speed INT NOT NULL,
Express_Speed INT NOT NULL,
Current_Station VARCHAR(25) NOT NULL,
FOREIGN KEY(Begin_Station) REFERENCES station(Station_Name),
FOREIGN KEY(End_Station) REFERENCES station(Station_Name),
FOREIGN KEY(Current_Station) REFERENCES station(Station_Name)
);

INSERT INTO train VALUES('A Express','A1','A9',10,5,20,'A6');
INSERT INTO train VALUES('B Express','B1','B9',10,5,20,'B6');
INSERT INTO train VALUES('C Express','C1','C9',10,5,20,'C6');
INSERT INTO train VALUES('A Local','A1','A9',10,5,20,'A5');
INSERT INTO train VALUES('B Local','B1','B9',10,5,20,'B5');
INSERT INTO train VALUES('C Local','C1','C9',10,5,20,'B5');
INSERT INTO train VALUES('A Shuttle','A1','B5',10,5,20,'A3');
INSERT INTO train VALUES('B Shuttle','B1','A5',10,5,5,'B3');
INSERT INTO train VALUES('C Shuttle','C1','A5',10,5,5,'C3');

CREATE TABLE Bus_stop(
Stop_Name VARCHAR(25) NOT NULL PRIMARY KEY,
Location_X INT NOT NULL,
Location_Y INT NOT NULL,
Location_Z INT NOT NULL
);

INSERT INTO Bus_stop VALUES('21st Street',0,50,5);
INSERT INTO Bus_stop VALUES('25th Street',0,75,5);
INSERT INTO Bus_stop VALUES('10 flatbush Avenue',0,100,5);
INSERT INTO Bus_stop VALUES('23rd street',10,50,15);
INSERT INTO Bus_stop VALUES('10 Flatbush Ave',10,75,15);
INSERT INTO Bus_stop VALUES('12 Flatbush Ave',10,100,15);
INSERT INTO Bus_stop VALUES('51st Street',20,50,25);
INSERT INTO Bus_stop VALUES('53rd street',20,75,25);
INSERT INTO Bus_stop VALUES('33rd street',20,100,25);


CREATE TABLE Bus(
Bus_ID VARCHAR(25) NOT NULL PRIMARY KEY,
Station_Name VARCHAR(25) NOT NULL,
Begin_Location VARCHAR(25) NOT NULL,
End_Location VARCHAR(25) NOT NULL,
FOREIGN KEY(Begin_Location) REFERENCES Bus_stop(Stop_Name),
FOREIGN KEY(End_Location) REFERENCES Bus_stop(Stop_Name),
FOREIGN KEY(Station_Name) REFERENCES station(Station_Name)
);

INSERT INTO Bus VALUES('S','A9','21st Street','10 flatbush Avenue');
INSERT INTO Bus VALUES('P','B9','23rd street','12 Flatbush Ave');
INSERT INTO Bus VALUES('R','C9','51st Street','33rd street');	





/* The Queries of the above script starts from here*/


USE Hampton_Transit_Sytem;

/*Query 1 Fing the location of all stations that are of Grade 1 (show Station Name, category, Location X, Location Y, Location Z)*/

SELECT station.Station_Name, station.category, station_location.Location_X, station_location.Location_Y, station_location.Location_Z
FROM station
JOIN station_location ON station.Station_Name = station_location.Station_Name
WHERE station.category = 'Grade-1';

/*Query 2 Find all stations that have bus transfers available (Show Station Name, Bus Transfer, Location X, Location Y, Location Z)*/

SELECT station.Station_Name, station_bus_transfer.Bus_Transfer, station_location.Location_X, 
station_location.Location_Y, station_location.Location_Z
FROM station
JOIN station_location ON station.Station_Name = station_location.station_name
JOIN station_bus_transfer ON station_location.Station_Name = station_bus_transfer.Station_Name
WHERE station_bus_transfer.Bus_Transfer = 'Transfer Available';


/*Query 3 Find train A which is shuttle with current location A3 (Show begin station, end station, train name, car count and speed)*/

select begin_station,end_station from
train where train_name = 'A shuttle' AND car_count = 10 AND express_speed = 20 AND current_station = 'A3';


/*Query 4 Find train A which is shuttle with current location A3 (Show begin location, end loation, bus and station name)*/
select begin_location,end_location, station_name from
bus where bus_id = 'S';


/*Query 5 Find all stations that are connected to A stations (Show Station Name and Connect To A)*/

SELECT station.Station_Name, station_connections.Connect_To_A
FROM station
JOIN station_connections ON station.Station_Name = station_connections.Station_Name
WHERE station_connections.Connect_To_A = 'Connection Available';

/*Query 6 Find all A stations which connect to both B and C stations 
			(Display Station Name,Connect To A, Connect To B, Connect To C)*/

SELECT station.Station_Name, station_connections.Connect_To_A, station_connections.Connect_To_B, station_connections.Connect_To_C
FROM station
JOIN station_connections ON station.Station_Name = station_connections.Station_Name
WHERE station_connections.Connect_To_A = 'Connection Available' AND station_connections.Connect_To_B = 'Connection Available' 
AND station_connections.Connect_To_C = 'Connection Available' AND station.Station_Name LIKE 'A%';
