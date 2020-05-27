-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-04-25 23:19:27.467

-- tables
-- Table: ViolationCode
CREATE TABLE ViolationCode (
    ViolationCodeId int  NOT NULL,
    CodeDetails varchar(50)  NOT NULL,
    CONSTRAINT ViolationCode_pk PRIMARY KEY (ViolationCodeId)
);

-- Table: ViolationDate
CREATE TABLE ViolationDate (
    ViolationdateId int  NOT NULL,
    Date date  NOT NULL,
    Day int  NOT NULL,
    Month int  NOT NULL,
    Time time  NOT NULL,
    CONSTRAINT ViolationDate_pk PRIMARY KEY (ViolationdateId)
);

-- Table: ViolationDescription
CREATE TABLE ViolationDescription (
    ViolationDescriptionId int  NOT NULL,
    Name varchar(100)  NOT NULL,
    Details varchar(100)  NOT NULL,
    Date date  NOT NULL,
    Time time  NOT NULL,
    Place varchar(100)  NOT NULL,
    CONSTRAINT ViolationDescription_pk PRIMARY KEY (ViolationDescriptionId)
);

-- Table: ViolationStatusDate
CREATE TABLE ViolationStatusDate (
    ViolationStatusDateId int  NOT NULL,
    Date date  NOT NULL,
    Day int  NOT NULL,
    Month int  NOT NULL,
    Time time  NOT NULL,
    CONSTRAINT ViolationStatusDate_pk PRIMARY KEY (ViolationStatusDateId)
);

-- Table: Violations
CREATE TABLE Violations (
    Vio id int  NOT NULL,
    ViolationLastModifyDateId int  NOT NULL,
    ViolationdateId int  NOT NULL,
    ViolationCodeId int  NOT NULL,
    ViolationsStatusId int  NOT NULL,
    ViolationDescriptionId int  NOT NULL,
    ViolationStatusDateId int  NOT NULL,
    CompanyId int  NOT NULL,
    ConstructionArt varchar(100)  NOT NULL,
    Responsibility varchar(100)  NOT NULL,
    Safety varchar(100)  NOT NULL,
    MaterialQuality varchar(100)  NOT NULL,
    TypeOfConnections varchar(150)  NOT NULL,
    Place varchar(150)  NOT NULL,
    City varchar(100)  NOT NULL,
    Country varchar(150)  NOT NULL,
    CONSTRAINT Violations_pk PRIMARY KEY (Vio id)
);

-- Table: ViolationsLastModifyDate
CREATE TABLE ViolationsLastModifyDate (
    ViolationLastModifyDateId int  NOT NULL,
    Date date  NOT NULL,
    Day int  NOT NULL,
    Month int  NOT NULL,
    Time time  NOT NULL,
    CONSTRAINT ViolationsLastModifyDate_pk PRIMARY KEY (ViolationLastModifyDateId)
);

-- Table: ViolationsStatus
CREATE TABLE ViolationsStatus (
    ViolationsStatusId int  NOT NULL,
    StatusUpdate varchar(50)  NOT NULL,
    Type varchar(50)  NOT NULL,
    CONSTRAINT ViolationsStatus_pk PRIMARY KEY (ViolationsStatusId)
);

-- foreign keys
-- Reference: Violations_ViolationCode (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationCode
    FOREIGN KEY (ViolationCodeId)
    REFERENCES ViolationCode (ViolationCodeId)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Violations_ViolationDate (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationDate
    FOREIGN KEY (ViolationdateId)
    REFERENCES ViolationDate (ViolationdateId)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Violations_ViolationDescription (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationDescription
    FOREIGN KEY (ViolationDescriptionId)
    REFERENCES ViolationDescription (ViolationDescriptionId)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Violations_ViolationStatusDate (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationStatusDate
    FOREIGN KEY (ViolationStatusDateId)
    REFERENCES ViolationStatusDate (ViolationStatusDateId)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Violations_ViolationsLastModifyDate (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationsLastModifyDate
    FOREIGN KEY (ViolationLastModifyDateId)
    REFERENCES ViolationsLastModifyDate (ViolationLastModifyDateId)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Violations_ViolationsStatus (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationsStatus
    FOREIGN KEY (ViolationsStatusId)
    REFERENCES ViolationsStatus (ViolationsStatusId)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

