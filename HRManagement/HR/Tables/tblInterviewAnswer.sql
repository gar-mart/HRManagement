CREATE TABLE HR.tblInterviewAnswer (
    Id INT IDENTITY NOT NULL
    , CandidateId INT NOT NULL
    , QuestionId INT NOT NULL
    , PositionId INT NOT NULL
    , InterviewerId INT NOT NULL
    , Answer NVARCHAR(MAX) NOT NULL
	, CONSTRAINT PK_InterviewAnswer PRIMARY KEY CLUSTERED(Id)
    , CONSTRAINT FK_InterviewAnswer_CandidateId FOREIGN KEY(CandidateId) REFERENCES HR.tblCandidate(Id)
    , CONSTRAINT FK_InterviewAnswer_QuestionId FOREIGN KEY(QuestionId) REFERENCES HR.tblInterviewQuestion(Id)
    , CONSTRAINT FK_InterviewAnswer_PositionId FOREIGN KEY(PositionId) REFERENCES HR.tblPosition(Id)
    , CONSTRAINT FK_InterviewAnswer_InterviewerId FOREIGN KEY(InterviewerId) REFERENCES HR.tblTeam(Id)
)
