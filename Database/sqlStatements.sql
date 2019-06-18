Create table Article(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY UNIQUE,
Manufacturer TEXT NOT NULL,
ArtName TEXT NOT NULL,
Price REAL NOT NULL,
ArtCount INTEGER NOT NULL,
Description TEXT NOT NULL,
Bild TEXT NOT NULL
);

Create table Cart(
CID INTEGER IDENTITY(1,1) PRIMARY KEY,
CNR INTEGER,
ArtNr INTEGER,
Count INTEGER NOT NULL,
FOREIGN KEY(CNR) references Customer(CNR),
FOREIGN KEY(ArtNR) references Article(ArtNr)
);

Create table Customer(
CNR INTEGER IDENTITY(1,1) PRIMARY KEY,
Email TEXT,
Name TEXT,
Street TEXT,
City TEXT
);

Create table Purchase(
OID INTEGER IDENTITY(1,1) PRIMARY KEY,
CNR INTEGER,
Payment TEXT,
FOREIGN KEY(CNR) references Customer(CNR)
);

Create table PurchCart(
PID INTEGER IDENTITY(1,1) PRIMARY KEY,
OID INTEGER,
ArtNr INTEGER,
Count INTEGER,
FOREIGN KEY(OID) references Purchase(OID),
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table Rating(
RID INTEGER IDENTITY(1,1) PRIMARY KEY,
ArtNr INTEGER,
CNR INTEGER,
Rating INTEGER,
Text VARCHAR,
FOREIGN KEY(ArtNr) references Article(ArtNr),
FOREIGN KEY(CNR) references Customer(CNR)
);

Create table HardDrive(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Capacity INTEGER,
Read INTEGER,
Write INTEGER,
Accesstime FLOAT,
Format TEXT,
Interface TEXT,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table HDD(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
RPM INTEGER,
Cache INTEGER,
FOREIGN KEY(ArtNr) references HardDrive(ArtNr)
);

Create table SSD(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Chiptype TEXT,
Lifetime INTEGER,
FOREIGN KEY(ArtNr) references HardDrive(ArtNr)
);

Create table Processor(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY UNIQUE,
Cores INTEGER,
Threads INTEGER,
Frequenzy REAL,
Turbo REAL,
L2Cache INTEGER,
L3Cache INTEGER,
Socket TEXT,
TDP INTEGER,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table GraphicsCard(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Frequenzy REAL,
Turbo REAL,
Streamp INTEGER,
Port TEXT,
Memorysize INTEGER,
Memorytype TEXT,
Memoryfrequency	INTEGER,
TDP INTEGER,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table RAM(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Capacity INTEGER,
NumberOfModul INTEGER,
CapacityType INTEGER,
MemoryType TEXT,
Voltage REAL,
Latency INTEGER,
tRCD INTEGER,
tRP INTEGER,
tRAS INTEGER,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table CustomerDatas(
CNR INTEGER IDENTITY(1,1) PRIMARY KEY,
Email TEXT NOT NULL,
Firstname TEXT NOT NULL,
Lastname TEXT NOT NULL,
Adress TEXT NOT NULL,
City TEXT NOT NULL
);

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description, Bild) VALUES (1,'AMD', 'Athlon 200GE', 42.00, 10, 'Prozessorfamilie: AMD Athlon, Prozessor-Taktfrequenz: 3, 2 GHz, Prozessorsockel: Buchse AM4. Speicherkanäle, vom Prozessor unterstützt: Dual, Speichertypen, vom Prozessor unterstützt: DDR4-SDRAM, Speichertaktraten, vom Prozessor unterstützt: 2667 MHz. On-BProzessor Prozessor: 200GE Prozessor Lithografie: 14 nm Prozessorfamilie: AMD Athlon Box: Ja Prozessorsockel: Buchse AM4 Anzahl Prozessorkerne: 2 Prozessor-Threads: 4 Prozessorbetriebsmodi: 32-bit, 64.', '../Backend/src/main/webapp/Pictures/AMD_Athlon_200GE.jpg');
INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES ( 1,2, 4, 3.20, 4.50, 'So.AM4', 35 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description, Bild) VALUES (2,'AMD', 'Ryzen 1300X', 84.90, 6, 'Der neue AMD Ryzen™ 3 Prozessor versetzt Sie in die Lage, mehr zu entdecken, zu kreieren und zu entwickeln. Ausgestattet mit der AMD SenseMI* Maschinenintelligenz und einer neu entwickelten effizienten Architektur, lernt und passt sich der AMD Ryzen™ Prozessor an, damit Sie dank unglaublicher Reaktionsschnelligkeit brillieren können und bei allem, was Sie tun, von einer großartigen Performance profitieren. ', '../Backend/src/main/webapp/Pictures/AMD_Ryzen_1300X.jpg');
INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (2,4, 4, 3.40, 3.70, 'So.AM4', 65);

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description, Bild) VALUES (3, 'AMD', 'Ryzen 1600X', 124.00, 4, 'AMD Prozessor ryzen 5 1600x bis zu 4.0 ghz 6 core socket am4 19 mb 95wwof DDR4 AMD Ryzen Master Utility.Betriebssystem-Unterstützung: Windows 10 - 64-Bit Edition RHEL x86 64-Bit Ubuntu x86 64-Bit. ', '../Backend/src/main/webapp/Pictures/AMD_Ryzen_1600X.jpg');
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (3, 6, 12, 3.60, 4.00, 'So.AM4', 95 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description, Bild) VALUES (4, 'AMD', 'Ryzen 1800X', 220.00, 5,'Deine Leidenschaft fürs Gaming hat uns inspiriert. Mit Ryzen™ 7 beginnt die neue Ära der AMD Hochleistungsprozessoren. Es ist mehr als ein Prozessor. Der AMD Ryzen™ 7 Prozessor ist dein Portal – zu einem Ziel deiner Wahl.
Der blitzschnelle AMD Ryzen™ 7 Prozessor ist die überragende Wahl. Mit der AMD SenseMI-Technologie nutzt Ryzen echte Maschinenintelligenz, um die Leistung zu beschleunigen. Alle Ryzen™ 7 Prozessoren verfügen über 8 Kerne mit 16 Threads für die ehrgeizigsten Wettkämpfer. Sie helfen dir beim gleichzeitigen Spielen und Streamen.\n
Unfassbare Leistung.\n
Höchste Effizienz. ', '../Backend/src/main/webapp/Pictures/AMD_Ryzen_1800X.jpg');
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES(4, 8, 16, 3.60, 4.00, 'So.AM4', 95 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description, Bild) VALUES (5, 'AMD', 'Ryzen 2200G', 85.00, 3, 'AMD SenseMI Technologie Mit der AMD SenseMI-Technologie nutzt Ryzen™ echte Maschinenintelligenz, um die Leistung noch weiter zu optimieren.‡ Weitere Infos AMD Ryzen Master AMD Ryzen™ Master Dienstprogramm Das unkomplizierte und leistungsstarke Programm zum Übertakten der AMD Ryzen™ Prozessoren Weitere Infos Enmotus FuzeDrive™ für AMD Ryzen™ Enmotus FuzeDrive™ für AMD Ryzen™ Beschleunigen Sie Ihren PC mit einer schnelleren, intelligenteren und einfacheren Speichertechnologie. Exklusiv für AMD Ryzen™Desktop-Prozessoren ', '../Backend/src/main/webapp/Pictures/AMD_Ryzen_2200G.jpg');
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (5, 4, 4, 3.50, 3.70, 'So.AM4', 65);

INSERT INTO CustomerDatas(CNR, Email, Firstname, Lastname, Adress, City) VALUES (1,'tobsi@gmx.de', 'Fälix', 'JoEl', 'Poststraße 8', 'Ebingen');
