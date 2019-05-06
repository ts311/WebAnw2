Create table Article(
	ArtNr		INTEGER PRIMARY KEY,
	Manufacturer	TEXT(20) NOT NULL,
	ArtName		TEXT(20) NOT NULL,
	Price		REAL  NOT NULL,
	ArtCount	INTEGER NOT NULL
);

Create table Cart(
	CID		INTEGER PRIMARY KEY,
	CNR		INTEGER,
	ArtNr		INTEGER,
	Count		INTEGER(1) NOT NULL,
	FOREIGN KEY(CNR) references Customer(CNR),
	FOREIGN KEY(ArtNR) references Article(ArtNr)
);

Create table Customer(
	CNR		INTEGER PRIMARY KEY,
	Email		TEXT(50),
	Name		TEXT(50),
	Straße		TEXT(50),
	City		TEXT(50)
);

Create table Purchase(
	OID		INTEGER PRIMARY KEY,
	CNR		INTEGER,
	Payment		TEXT(20),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table PurchCart(
	PID		TEXT PRIMARY KEY,
	OID		TEXT,
	ArtNr		TEXT,
	Count		INTEGER,
	FOREIGN KEY(OID) references Purchase(OID),
	FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table Rating(
	RID		INTEGER PRIMARY KEY,
	ArtNr		INTEGER,
	CNR		INTEGER,
	Rating		INTEGER,
	Text		VARCHAR(250),
	FOREIGN KEY(ArtNr) references Article(ArtNr),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table HardDrive(
	ArtNr		INTEGER PRIMARY KEY, 
	Capacity 	INTEGER,
	Read		INTEGER,
	Write		INTEGER,
	Accesstime	FLOAT,
	Format		TEXT(10),
	Interface	TEXT(20)
);

Create table HDD(
	ArtNr		INTEGER PRIMARY KEY,
	RPM		INTEGER,
	Cache		INTEGER
);

Create table SSD(
	ArtNr		INTEGER PRIMARY KEY,
	Chiptype	TEXT(20),
	Lifetime	INTEGER
);

Create table Processor(
	ArtNr		INTEGER PRIMARY KEY,
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
	ArtNr		INTEGER PRIMARY KEY,
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
	ArtNr		INTEGER PRIMARY KEY,	
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
