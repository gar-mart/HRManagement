CREATE TABLE HR.tblCandidateWorkflow (
    Id INT IDENTITY NOT NULL
    , IsComplete BIT NOT NULL
    , CandidateId INT NOT NULL
    , [Order] SMALLINT NOT NULL
    , OwnerId INT NOT NULL
    , WorkflowStep NVARCHAR(1000) NOT NULL
    , Notes NVARCHAR(MAX)
	, CONSTRAINT PK_CandidateWorkflow PRIMARY KEY CLUSTERED(Id)
    , CONSTRAINT FK_CandidateWorkflow_CandidateId FOREIGN KEY(CandidateId) REFERENCES HR.tblCandidate(Id)
)