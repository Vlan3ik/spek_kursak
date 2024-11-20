SELECT 
    E.EmployeeID AS [ID Сотрудника],
    E.FullName AS [ФИО Сотрудника],
    P.PositionName AS [Должность],
    Dpt.DepartmentName AS [Отдел],
    EP.ProceedingNumber AS [Номер Судебного Процесса],
    EP.DateOfInitiation AS [Дата Начала],
    Deb.FullName AS [ФИО Должника],
    Deb.Address AS [Адрес Должника],
    Deb.PassportData AS [Паспорт Должника],
    Deb.TIN AS [ИНН Должника],
    Cred.FullName AS [ФИО Кредитора],
    Cred.Address AS [Адрес Кредитора],
    Cred.Phone AS [Телефон Кредитора],
    EP.DebtAmount AS [Сумма Долга],
    EP.Basis AS [Основание],
    EP.Status AS [Статус],
    SP.PropertyName AS [Изъятое Имущество],
    SP.Description AS [Описание Имущества],
    SP.Value AS [Стоимость Имущества],
    SP.Status AS [Статус Имущества],
    C.CourtName AS [Название Суда],
    C.Address AS [Адрес Суда],
    C.Phone AS [Телефон Суда],
    Doc.DocumentName AS [Название Документа],
    Doc.Date AS [Дата Документа],
    Doc.Description AS [Описание Документа]
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
    PositionID AS [ID Должности],
    PositionName AS [Название Должности],
    Salary AS [Зарплата],
    Responsibilities AS [Обязанности],
    Requirements AS [Требования]
FROM 
    Positions;

SELECT 
    DepartmentID AS [ID Отдела],
    DepartmentName AS [Название Отдела],
    Description AS [Описание]
FROM 
    Departments;

SELECT 
    EmployeeID AS [ID Сотрудника],
    FullName AS [ФИО Сотрудника],
    Age AS [Возраст],
    Gender AS [Пол],
    Address AS [Адрес],
    Phone AS [Телефон],
    PassportData AS [Паспортные Данные],
    PositionID AS [ID Должности],
    DepartmentID AS [ID Отдела]
FROM 
    Employees;

SELECT 
    DebtorID AS [ID Должника],
    FullName AS [ФИО Должника],
    DateOfBirth AS [Дата Рождения],
    Address AS [Адрес],
    PassportData AS [Паспортные Данные],
    TIN AS [ИНН],
    Description AS [Описание]
FROM 
    Debtors;

SELECT 
    CreditorID AS [ID Кредитора],
    FullName AS [ФИО Кредитора],
    Address AS [Адрес],
    Phone AS [Телефон],
    Description AS [Описание]
FROM 
    Creditors;

SELECT 
    EnforcementProceedingID AS [ID Судебного Процесса],
    ProceedingNumber AS [Номер Судебного Процесса],
    DateOfInitiation AS [Дата Начала],
    DebtorID AS [ID Должника],
    CreditorID AS [ID Кредитора],
    EmployeeID AS [ID Сотрудника],
    DebtAmount AS [Сумма Долга],
    Basis AS [Основание],
    Status AS [Статус]
FROM 
    EnforcementProceedings;

SELECT 
    PropertyID AS [ID Имущества],
    EnforcementProceedingID AS [ID Судебного Процесса],
    PropertyName AS [Название Имущества],
    Description AS [Описание],
    Value AS [Стоимость],
    Status AS [Статус]
FROM 
    SeizedProperty;

SELECT 
    CourtID AS [ID Суда],
    CourtName AS [Название Суда],
    Address AS [Адрес],
    Phone AS [Телефон]
FROM 
    Courts;

SELECT 
    DocumentID AS [ID Документа],
    EnforcementProceedingID AS [ID Судебного Процесса],
    CourtID AS [ID Суда],
    DocumentName AS [Название Документа],
    Date AS [Дата],
    Description AS [Описание]
FROM 
    Documents;