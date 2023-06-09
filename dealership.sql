# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealershipDatabase                                       #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS CarDealershipDatabase;

CREATE DATABASE IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;

CREATE TABLE `Dealerships` (
    `dealershipID` INTEGER NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `address` varchar(50) NOT NULL,
    `phone` varchar(12)NOT NULL,
    CONSTRAINT `PK_Dealerships` PRIMARY KEY (`dealershipID`)
);

CREATE TABLE `Vehicles` (
    `vin` INTEGER NOT NULL,
    `sold` VARCHAR(50) NOT NULL,
    `make` varchar(50),
    `model` varchar(50),
    CONSTRAINT `PK_Vehicles` PRIMARY KEY (`vin`)
);


CREATE TABLE `Inventory` (
    `dealershipID` INTEGER NOT NULL,
    `vin` VARCHAR(50) NOT NULL,
    CONSTRAINT `PK_Dealerships` PRIMARY KEY (`dealershipID`)
);

CREATE TABLE `sales_contracts` (
    `saleID` INTEGER NOT NULL,
    `vin` VARCHAR(50) NOT NULL,
	`rate` VARCHAR(50) NOT NULL,
    CONSTRAINT `PK_sales` PRIMARY KEY (`saleID`)
);

# Foreign key constraints  


# ALTER TABLE `CustomerCustomerDemo` ADD CONSTRAINT `FK_CustomerCustomerDemo` 
  # FOREIGN KEY (`CustomerTypeID`) REFERENCES `CustomerDemographics` (`CustomerTypeID`);
    
# Add info into "Dealership" 
    
TRUNCATE TABLE Dealerships;
INSERT INTO Dealerships VALUES(1,'Toyota','2041 W Hebron',2144174238);
INSERT INTO Dealerships VALUES(2,'Honda','2056 W Hebron',2144174788);
INSERT INTO Dealerships VALUES(3,'Ford','2341 W Hebron',0903914950);

# Add info into "Vehicles" 

TRUNCATE TABLE Vehicles;
INSERT INTO Vehicles VALUES(123,'No','Ford','Mustang');
INSERT INTO Vehicles VALUES(456,'No','Toyota','RAV4');
INSERT INTO Vehicles VALUES(789,'No','Honda','CRV');

# Add info into "Inventory"
TRUNCATE TABLE Inventory;
INSERT INTO Inventory VALUES(1,vin);
INSERT INTO Inventory VALUES(2, vin);
INSERT INTO Inventory VALUES(3, vin);


# Add info into "sales_contracts " 
TRUNCATE TABLE sales_contracts;
INSERT INTO sales_contracts VALUES(1, vin , '12.5');
INSERT INTO sales_contracts VALUES(2,vin,'20');
INSERT INTO sales_contracts VALUES(3,vin,'30');