Create table Article(
	ArtNr           INTEGER IDENTITY(1,1) PRIMARY KEY,
	Manufacturer	TEXT(20) NOT NULL,
	ArtName 		TEXT(20) NOT NULL,
	Price	    	REAL  NOT NULL,
	ArtCount    	INTEGER NOT NULL
);

Create table Cart(
	CID		        INTEGER IDENTITY(1,1) PRIMARY KEY,
	CNR		        INTEGER,
	ArtNr	    	INTEGER,
	Count	    	INTEGER(1) NOT NULL,
	FOREIGN KEY(CNR) references Customer(CNR),
	FOREIGN KEY(ArtNR) references Article(ArtNr)
);

Create table Customer(
	CNR		        INTEGER IDENTITY(1,1) PRIMARY KEY,
	Email	    	TEXT(50),
	Name	    	TEXT(50),
	Straße	    	TEXT(50),
	City	    	TEXT(50)
);

Create table Purchase(
	OID		        INTEGER IDENTITY(1,1) PRIMARY KEY,
	CNR		        INTEGER,
	Payment	    	TEXT(20),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table PurchCart(
	PID		        INTEGER IDENTITY(1,1) PRIMARY KEY,
	OID		        INTEGER,
	ArtNr	    	INTEGER,
	Count	    	INTEGER,
	FOREIGN KEY(OID) references Purchase(OID),
	FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table Rating(
	RID		        INTEGER IDENTITY(1,1) PRIMARY KEY,
	ArtNr	    	INTEGER,
	CNR		        INTEGER,
	Rating	    	INTEGER,
	Text	    	VARCHAR(250),
	FOREIGN KEY(ArtNr) references Article(ArtNr),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table HardDrive(
	ArtNr	    	INTEGER IDENTITY(1,1) PRIMARY KEY, 
	Capacity     	INTEGER,
	Read	    	INTEGER,
	Write	    	INTEGER,
	Accesstime  	FLOAT,
	Format		    TEXT(10),
	Interface	    TEXT(20),
    FOREIGN KEY (ArtNr) references Article(ArtNr)
);

Create table HDD(
	ArtNr		    INTEGER IDENTITY(1,1) PRIMARY KEY,
	RPM		        INTEGER,
	Cache		    INTEGER,
    FOREIGN KEY (ArtNr) references HardDrive(ArtNr)
);

Create table SSD(
	ArtNr           INTEGER IDENTITY(1,1) PRIMARY KEY,
	Chiptype    	TEXT(20),
	Lifetime	    INTEGER,
    FOREIGN KEY (ArtNr) references HardDrive(ArtNr)

);

Create table Processor(
	ArtNr		    INTEGER IDENTITY(1,1) PRIMARY KEY,
	Cores		    INTEGER,
	Threads		    INTEGER,
	Frequenzy	    REAL,
	Turbo		    REAL,
	L2Cache		    INTEGER,
	L3Cache		    INTEGER,
	Socket		    TEXT(20),
	TDP		        INTEGER,
    FOREIGN KEY (ArtNr) references Article(ArtNr)
);

Create table GraphicsCard(
	ArtNr		    INTEGER IDENTITY(1,1) PRIMARY KEY,
	Frequenzy	    REAL,
	Turbo		    REAL,
	Streamp		    INTEGER,
	Ports		    TEXT(20),
	Memorysize	    INTEGER,
	Memorytype	    TEXT(20),
	Memoryfrequency	INTEGER,
	TDP		        INTEGER,
    FOREIGN KEY (ArtNr) references Article(ArtNr)
);

Create table RAM(
	ArtNr		    INTEGER IDENTITY(1,1) PRIMARY KEY,	
	Capacity	    INTEGER,
	NumberOfModul 	INTEGER,
	CapacityType	INTEGER,
	MemoryType	    TEXT(20),
	Voltage		    REAL,
	Latency		    INTEGER,
	tRCD		    INTEGER,
	tRP		        INTEGER,
	tRAS		    INTEGER,
    FOREIGN KEY (ArtNr) references Article(ArtNr)
);


INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (1,'AMD', 'Athlon 200GE', 42.00, 10);
INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES ( 1,2, 4, 3.20, 4.50, 'So.AM4', 35 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (2,'AMD', 'Ryzen 1300X', 84.90, 6);
INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (2,4, 4, 3.40, 3.70, 'So.AM4', 65);

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (3, 'AMD', '1600X', 124.00, 4);
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (3, 6, 12, 3.60, 4.00, 'So.AM4', 95 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (4, 'AMD', '1800X', 220.00, 5);
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES(4, 8, 16, 3.60, 4.00, 'So.AM4', 95 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (5, 'AMD', '2200G', 85.00, 3);
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (5, 4, 4, 3.50, 3.70, 'So.AM4', 65 );
/*
INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('AMD', '2400G', 124.00, 3);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (4, 8, 3.60, 3.90, 'So.AM4', 65 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('AMD', '2600G', 150.00, 8);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (6, 12, 3.40, 3.90,'So.AM4', 65 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('AMD', '2700G', 210.99, 7);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES ( 8, 16, 3.20, 4.10, 'So.AM4', 65 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('Intel', 'Core I3 8100', 140.99, 5);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (4, 4, 3.00, 3.60,'FCLGA1151', 65 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('Intel', 'Core I5 9600', 250.99, 2);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (6, 6, 3.70, 4.60, 'FCLGA1151', 95 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('Intel', 'Core I7 8700', 319.99, 6);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (6, 12, 3.20, 4.60, 'FCLGA1151', 65 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('Intel', 'Core I7 9700', 399.99, 8);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (8, 8, 3.60, 4.90, 'FCLGA1151', 95 );

INSERT INTO Article(Manufacturer,ArtName,Price,ArtCount) VALUES ('Intel', 'Core I9 9900', 399.99, 8);
INSERT INTO Processor (Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (8, 16, 3.60, 5.00, 'FCLGA1151', 95 );
*/

SELECT * FROM Article INNER JOIN Processor ON Article.ArtNr = Processor.ArtNr;
