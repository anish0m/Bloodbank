CREATE TABLE IF NOT EXISTS USER (
    ID VARCHAR(50) PRIMARY KEY,
    NAME VARCHAR(50),
    CITY VARCHAR(50),
    POSTCODE VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS PERSON (
    ID VARCHAR(50) PRIMARY KEY,
    BLOOD_GROUP VARCHAR(3),
    FOREIGN KEY (ID) REFERENCES USER(ID)
);

CREATE TABLE IF NOT EXISTS DONOR (
    ID VARCHAR(50) PRIMARY KEY,
    LAST_DONATED VARCHAR(10),
    FOREIGN KEY (ID) REFERENCES PERSON(ID)
);

CREATE TABLE IF NOT EXISTS BLOOD_BANK (
    ID VARCHAR(50) PRIMARY KEY,
    FOREIGN KEY (ID) REFERENCES USER(ID)
);

CREATE TABLE IF NOT EXISTS BLOOD_STORAGE(
    BANK_ID VARCHAR(50),
    BLOOD_GROUP VARCHAR(3),
    AMOUNT INTEGER,
    PRIMARY KEY (BANK_ID, BLOOD_GROUP),
    FOREIGN KEY (BANK_ID) REFERENCES BLOOD_BANK(ID)
);