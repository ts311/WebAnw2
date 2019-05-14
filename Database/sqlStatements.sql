Create table Article(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT,
	Manufacturer	TEXT(20) NOT NULL,
	ArtName		TEXT(20) NOT NULL,
	Price		REAL  NOT NULL,
	ArtCount	INTEGER NOT NULL
);

Create table Cart(
	CID		INTEGER PRIMARY KEY AUTOINCREMENT,
	CNR		INTEGER,
	ArtNr		INTEGER,
	Count		INTEGER(1) NOT NULL,
	FOREIGN KEY(CNR) references Customer(CNR),
	FOREIGN KEY(ArtNR) references Article(ArtNr)
);

Create table Customer(
	CNR		INTEGER PRIMARY KEY AUTOINCREMENT,
	Email		TEXT(50),
	Name		TEXT(50),
	Straße		TEXT(50),
	City		TEXT(50)
);

Create table Purchase(
	OID		INTEGER PRIMARY KEY AUTOINCREMENT,
	CNR		INTEGER,
	Payment		TEXT(20),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table PurchCart(
	PID		INTEGER PRIMARY KEY AUTOINCREMENT,
	OID		INTEGER,
	ArtNr		INTEGER,
	Count		INTEGER,
	FOREIGN KEY(OID) references Purchase(OID),
	FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table Rating(
	RID		INTEGER PRIMARY KEY AUTOINCREMENT,
	ArtNr		INTEGER,
	CNR		INTEGER,
	Rating		INTEGER,
	Text		VARCHAR(250),
	FOREIGN KEY(ArtNr) references Article(ArtNr),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table HardDrive(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT, 
	Capacity 	INTEGER,
	Read		INTEGER,
	Write		INTEGER,
	Accesstime	FLOAT,
	Format		TEXT(10),
	Interface	TEXT(20)
);

Create table HDD(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT,
	RPM		INTEGER,
	Cache		INTEGER
);

Create table SSD(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT,
	Chiptype	TEXT(20),
	Lifetime	INTEGER
);

Create table Processor(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT,
	Cores		INTEGER,
	Threads		INTEGER,
	Frequenzy	REAL,
	Turbo		REAL,
	L2Cache		INTEGER,
	L3Cache		INTEGER,
	Socket		TEXT(20),
	TDP		INTEGER 
);

Create table GraphicsCard(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT,
	Frequenzy	REAL,
	Turbo		REAL,
	Streamp		INTEGER,
	Ports		TEXT(20),
	Memorysize	INTEGER,
	Memorytype	TEXT(20),
	Memoryfrequency	INTEGER,
	TDP		INTEGER
);

Create table RAM(
	ArtNr		INTEGER PRIMARY KEY AUTOINCREMENT,	
	Capacity	INTEGER,
	NumberOfModul 	INTEGER,
	CapacityType	INTEGER,
	MemoryType	TEXT(20),
	Voltage		REAL,
	Latency		INTEGER,
	tRCD		INTEGER,
	tRP		INTEGER,
	tRAS		INTEGER
);




INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', 'Athlon 200GE', 42.00, 10, 2, 4, 3.20, 4.50, 1024, 4000, 'So.AM4', 35 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', 'Ryzen 1300X', 84.90, 6, 4, 4, 3.40, 3.70, 1024, 8000, 'So.AM4', 65 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', '1600X', 124.00, 4, 6, 12, 3.60, 4.00, 3072, 16000, 'So.AM4', 95 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', '1800X', 220.00, 5, 8, 16, 3.60, 4.00, 4096, 16000, 'So.AM4', 95 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', '2200G', 85.00, 3, 4, 4, 3.50, 3.70, 2048, 4000, 'So.AM4', 65 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', '2400G', 124.00, 3, 4, 8, 3.60, 3.90, 2048, 4000, 'So.AM4', 65 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', '2600G', 150.00, 8, 6, 12, 3.40, 3.90, 3072, 16000, 'So.AM4', 65 );

INSTER INTO Processor (Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,L2Cache,L3Cache,Socket,TDP) VALUES ('AMD', '2700G', 210.99, 7, 8, 16, 3.20, 4.10, 4096, 16000, 'So.AM4', 65 );


