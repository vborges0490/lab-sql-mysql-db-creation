
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(30) NOT NULL,
    PRIMARY KEY (VIN)
);


DROP TABLE IF EXISTS cars;

CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(255),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    StateProvince VARCHAR(255),
    Country VARCHAR(255),
    ZipPostalCode VARCHAR(255),
    PRIMARY KEY (CustomerID)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE salespersons (
    StaffID INT AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Store VARCHAR(255) NOT NULL,
    PRIMARY KEY (StaffID)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE invoices (
    InvoiceNumber INT AUTO_INCREMENT,
    Date DATE NOT NULL,
    CarVIN VARCHAR(17) NOT NULL,
    CustomerID INT NOT NULL,
    StaffID INT NOT NULL,
    PRIMARY KEY (InvoiceNumber),
    FOREIGN KEY (CarVIN) REFERENCES cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES salespersons(StaffID)
);

DROP TABLE IF EXISTS invoices;