CREATE TABLE HR.tblCandidate (
    Id INT IDENTITY NOT NULL
    , IsActive BIT NOT NULL
    , IsGo BIT NOT NULL
    , WouldHire BIT NULL
    , PositionId INT NOT NULL
    , RoleId INT NOT NULL
    , CampaignId INT NOT NULL
    , AgencyId INT NULL
    , FirstName NVARCHAR(50) NOT NULL
    , LastName NVARCHAR(50) NOT NULL
    , Email NVARCHAR(200) NULL
    , Phone VARCHAR(25) NULL
    , DateFound DATE NULL
    , Notes NVARCHAR(MAX) NULL
    , LastUpdated DATETIME2(0) NULL
    , LastUpdatedBy NVARCHAR(200) NULL
	, CONSTRAINT PK_Candidate PRIMARY KEY CLUSTERED(Id)
    , CONSTRAINT FK_Candidate_PositionId FOREIGN KEY(PositionId) REFERENCES HR.tblPosition(Id)
    , CONSTRAINT FK_Candidate_RoleId FOREIGN KEY(RoleId) REFERENCES HR.tblRole(Id)
    , CONSTRAINT FK_Candidate_CampaignId FOREIGN KEY(CampaignId) REFERENCES HR.tblCampaign(Id)
    , CONSTRAINT FK_Candidate_AgencyId FOREIGN KEY(AgencyId) REFERENCES HR.tblAgency(Id)
)