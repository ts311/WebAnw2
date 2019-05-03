Create table Article(
	ArtNr		INTEGER PRIMARY KEY,
	Manufacturer	VARCHAR(20) NOT NULL,
	ArtName		VARCHAR(20) NOT NULL,
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
	Email		VARCHAR(50),
	Name		VARCHAR(50),
	Straße		VARCHAR(50),
	City		VARCHAR(50)
);

Create table Purchase(
	OID		INTEGER PRIMARY KEY,
	CNR		INTEGER,
	Payment		VARCHAR(20),
	FOREIGN KEY(CNR) references Customer(CNR)
);

Create table PurchCart(
	PID		INTEGER PRIMARY KEY,
	OID		INTEGER,
	ArtNr		INTEGER,
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
	Format		VARCHAR(10),
	Interface	VARCHAR(20)
);

Create table HDD(
	ArtNr		INTEGER PRIMARY KEY,
	RPM		INTEGER,
	Cache		INTEGER
);

Create table SSD(
	ArtNr		INTEGER PRIMARY KEY,
	Chiptype	VARCHAR(20),
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
	Socket		VARCHAR(20),
	TDP		INTEGER 
);

Create table GraphicsCard(
	ArtNr		INTEGER PRIMARY KEY,
	Frequenzy	REAL,
	Turbo		REAL,
	Streamp		INTEGER,
	Ports		VARCHAR(20),
	Memorysize	INTEGER,
	Memorytype	VARCHAR(20),
	Memoryfrequency	INTEGER,
	TDP		INTEGER
);

Create table RAM(
	ArtNr		INTEGER PRIMARY KEY,	
	Capacity	INTEGER,
	NumberOfModul 	INTEGER,
	CapacityType	INTEGER,
	MemoryType	VARCHAR(20),
	Voltage		REAL,
	Latency		INTEGER,
	tRCD		INTEGER,
	tRP		INTEGER,
	tRAS		INTEGER
);
