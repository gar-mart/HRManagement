﻿CREATE TABLE HR.tblCampaign (
    Id INT IDENTITY NOT NULL
	, Campaign NVARCHAR(200) NOT NULL
	, CampaignDate DATE NOT NULL
	, CONSTRAINT PK_Campaign PRIMARY KEY CLUSTERED(Id)
)
