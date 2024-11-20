-- Create tables
CREATE TABLE Positions (
    PositionID INT PRIMARY KEY IDENTITY(1,1),
    PositionName NVARCHAR(100) NOT NULL,
    Salary DECIMAL(18, 2) NOT NULL,
    Responsibilities NVARCHAR(MAX),
    Requirements NVARCHAR(MAX)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(150) NOT NULL,
    Age INT NOT NULL,
    Gender NVARCHAR(10),
    Address NVARCHAR(255),
    Phone NVARCHAR(20),
    PassportData NVARCHAR(50),
    PositionID INT FOREIGN KEY REFERENCES Positions(PositionID),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID)
);

CREATE TABLE Debtors (
    DebtorID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(150) NOT NULL,
    DateOfBirth DATE,
    Address NVARCHAR(255),
    PassportData NVARCHAR(50),
    TIN NVARCHAR(20),
    Description NVARCHAR(MAX)
);

CREATE TABLE Creditors (
    CreditorID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(150) NOT NULL,
    Address NVARCHAR(255),
    Phone NVARCHAR(20),
    Description NVARCHAR(MAX)
);

CREATE TABLE EnforcementProceedings (
    EnforcementProceedingID INT PRIMARY KEY IDENTITY(1,1),
    ProceedingNumber NVARCHAR(50) NOT NULL,
    DateOfInitiation DATE NOT NULL,
    DebtorID INT FOREIGN KEY REFERENCES Debtors(DebtorID),
    CreditorID INT FOREIGN KEY REFERENCES Creditors(CreditorID),
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    DebtAmount DECIMAL(18, 2) NOT NULL,
    Basis NVARCHAR(MAX),
    Status NVARCHAR(50) NOT NULL
);

CREATE TABLE SeizedProperty (
    PropertyID INT PRIMARY KEY IDENTITY(1,1),
    EnforcementProceedingID INT FOREIGN KEY REFERENCES EnforcementProceedings(EnforcementProceedingID),
    PropertyName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Value DECIMAL(18, 2),
    Status NVARCHAR(50) NOT NULL
);

CREATE TABLE Courts (
    CourtID INT PRIMARY KEY IDENTITY(1,1),
    CourtName NVARCHAR(100) NOT NULL,
    Address NVARCHAR(255),
    Phone NVARCHAR(20)
);

CREATE TABLE Documents (
    DocumentID INT PRIMARY KEY IDENTITY(1,1),
    EnforcementProceedingID INT FOREIGN KEY REFERENCES EnforcementProceedings(EnforcementProceedingID),
    CourtID INT FOREIGN KEY REFERENCES Courts(CourtID),
    DocumentName NVARCHAR(100) NOT NULL,
    Date DATE NOT NULL,
    Description NVARCHAR(MAX)
);
