﻿CREATE TABLE HR.tblPosition (
    Id INT IDENTITY NOT NULL
    , Position VARCHAR(100) NOT NULL
	, CONSTRAINT PK_Position PRIMARY KEY CLUSTERED(Id)
)