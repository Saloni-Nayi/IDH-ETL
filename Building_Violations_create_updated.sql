-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-05-29 08:53:00.000

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
    VioId int  NOT NULL,
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
    CONSTRAINT Violations_pk PRIMARY KEY (VioId)
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
;

-- Reference: Violations_ViolationDate (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationDate
    FOREIGN KEY (ViolationdateId)
    REFERENCES ViolationDate (ViolationdateId)  
;

-- Reference: Violations_ViolationDescription (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationDescription
    FOREIGN KEY (ViolationDescriptionId)
    REFERENCES ViolationDescription (ViolationDescriptionId)  
;

-- Reference: Violations_ViolationStatusDate (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationStatusDate
    FOREIGN KEY (ViolationStatusDateId)
    REFERENCES ViolationStatusDate (ViolationStatusDateId)  
;

-- Reference: Violations_ViolationsLastModifyDate (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationsLastModifyDate
    FOREIGN KEY (ViolationLastModifyDateId)
    REFERENCES ViolationsLastModifyDate (ViolationLastModifyDateId)  
;

-- Reference: Violations_ViolationsStatus (table: Violations)
ALTER TABLE Violations ADD CONSTRAINT Violations_ViolationsStatus
    FOREIGN KEY (ViolationsStatusId)
    REFERENCES ViolationsStatus (ViolationsStatusId)  
;

select*from ViolationCode;
insert into ViolationCode(ViolationCodeId, CodeDetails) values(15,'vio5');

select*from ViolationsStatus;
insert into ViolationsStatus(ViolationsStatusId, StatusUpdate, Type) values(250, 'Normal', 'Damage');

select*from ViolationDate;
insert into ViolationDate(ViolationdateId, Date, Day, Month, Time) values(666, '5-5-2010', '4', 05, '12:30');

select*from ViolationDescription;
insert into ViolationDescription(ViolationDescriptionId, Name, Details, Date, Time, Place) values(50, 'Fire', 'Electry city short-circuit occurs', '5-5-2010', '12:30', 'Florida,USA');

select*from ViolationsLastModifyDate;
insert into ViolationsLastModifyDate(ViolationLastModifyDateId, Date, Day, Month, Time) values(171, '12-1-2020', '140', 1, '14:01');

select*from ViolationStatusDate;
insert into ViolationStatusDate(ViolationStatusDateId, Date, Day, Month, Time) values(006, '1-1-2020', '1900', 1, '12:02');

select*from Violations;
insert into Violations(VioId, ViolationLastModifyDateId, ViolationdateId, ViolationCodeId, ViolationsStatusId, ViolationDescriptionId, ViolationStatusDateId, CompanyId, ConstructionArt, Responsibility, Safety, MaterialQuality, TypeOfConnections, Place, City, Country) values(50005,161,555,15,500,50,6,05, 'Castle Art', 'Art Tools', 'Basic medical safety', 'Raw Material', 'Alarm', 'Govt Property', 'Krakow', 'Poland');
-- End of file.

