CREATE TABLE HR.tblInterviewQuestion (
    Id INT IDENTITY NOT NULL
    , PositionId INT NOT NULL
    , [Order] SMALLINT NOT NULL
    , Question NVARCHAR(MAX) NOT NULL
	, CONSTRAINT PK_InterviewQuestion PRIMARY KEY CLUSTERED(Id)
    , CONSTRAINT FK_InterviewQuestion_PositionId FOREIGN KEY(PositionId) REFERENCES HR.tblPosition(Id)
)

