﻿CREATE TABLE HR.tblAgency (
    Id INT IDENTITY NOT NULL
    , Agency NVARCHAR(100) NOT NULL
    , CONSTRAINT PK_Agency PRIMARY KEY CLUSTERED(Id)
)
