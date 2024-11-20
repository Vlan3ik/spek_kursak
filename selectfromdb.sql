SELECT 
    E.EmployeeID AS [ID ����������],
    E.FullName AS [��� ����������],
    P.PositionName AS [���������],
    Dpt.DepartmentName AS [�����],
    EP.ProceedingNumber AS [����� ��������� ��������],
    EP.DateOfInitiation AS [���� ������],
    Deb.FullName AS [��� ��������],
    Deb.Address AS [����� ��������],
    Deb.PassportData AS [������� ��������],
    Deb.TIN AS [��� ��������],
    Cred.FullName AS [��� ���������],
    Cred.Address AS [����� ���������],
    Cred.Phone AS [������� ���������],
    EP.DebtAmount AS [����� �����],
    EP.Basis AS [���������],
    EP.Status AS [������],
    SP.PropertyName AS [������� ���������],
    SP.Description AS [�������� ���������],
    SP.Value AS [��������� ���������],
    SP.Status AS [������ ���������],
    C.CourtName AS [�������� ����],
    C.Address AS [����� ����],
    C.Phone AS [������� ����],
    Doc.DocumentName AS [�������� ���������],
    Doc.Date AS [���� ���������],
    Doc.Description AS [�������� ���������]
FROM 
    Employees E
JOIN Positions P ON E.PositionID = P.PositionID
JOIN Departments Dpt ON E.DepartmentID = Dpt.DepartmentID
JOIN EnforcementProceedings EP ON E.EmployeeID = EP.EmployeeID
JOIN Debtors Deb ON EP.DebtorID = Deb.DebtorID
JOIN Creditors Cred ON EP.CreditorID = Cred.CreditorID
LEFT JOIN SeizedProperty SP ON EP.EnforcementProceedingID = SP.EnforcementProceedingID
LEFT JOIN Documents Doc ON EP.EnforcementProceedingID = Doc.EnforcementProceedingID
LEFT JOIN Courts C ON Doc.CourtID = C.CourtID
ORDER BY 
    E.EmployeeID, EP.ProceedingNumber;

SELECT 
    PositionID AS [ID ���������],
    PositionName AS [�������� ���������],
    Salary AS [��������],
    Responsibilities AS [�����������],
    Requirements AS [����������]
FROM 
    Positions;

SELECT 
    DepartmentID AS [ID ������],
    DepartmentName AS [�������� ������],
    Description AS [��������]
FROM 
    Departments;

SELECT 
    EmployeeID AS [ID ����������],
    FullName AS [��� ����������],
    Age AS [�������],
    Gender AS [���],
    Address AS [�����],
    Phone AS [�������],
    PassportData AS [���������� ������],
    PositionID AS [ID ���������],
    DepartmentID AS [ID ������]
FROM 
    Employees;

SELECT 
    DebtorID AS [ID ��������],
    FullName AS [��� ��������],
    DateOfBirth AS [���� ��������],
    Address AS [�����],
    PassportData AS [���������� ������],
    TIN AS [���],
    Description AS [��������]
FROM 
    Debtors;

SELECT 
    CreditorID AS [ID ���������],
    FullName AS [��� ���������],
    Address AS [�����],
    Phone AS [�������],
    Description AS [��������]
FROM 
    Creditors;

SELECT 
    EnforcementProceedingID AS [ID ��������� ��������],
    ProceedingNumber AS [����� ��������� ��������],
    DateOfInitiation AS [���� ������],
    DebtorID AS [ID ��������],
    CreditorID AS [ID ���������],
    EmployeeID AS [ID ����������],
    DebtAmount AS [����� �����],
    Basis AS [���������],
    Status AS [������]
FROM 
    EnforcementProceedings;

SELECT 
    PropertyID AS [ID ���������],
    EnforcementProceedingID AS [ID ��������� ��������],
    PropertyName AS [�������� ���������],
    Description AS [��������],
    Value AS [���������],
    Status AS [������]
FROM 
    SeizedProperty;

SELECT 
    CourtID AS [ID ����],
    CourtName AS [�������� ����],
    Address AS [�����],
    Phone AS [�������]
FROM 
    Courts;

SELECT 
    DocumentID AS [ID ���������],
    EnforcementProceedingID AS [ID ��������� ��������],
    CourtID AS [ID ����],
    DocumentName AS [�������� ���������],
    Date AS [����],
    Description AS [��������]
FROM 
    Documents;