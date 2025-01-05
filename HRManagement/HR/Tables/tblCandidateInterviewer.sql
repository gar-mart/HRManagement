CREATE TABLE HR.tblCandidateInterviewer (
    Id INT IDENTITY NOT NULL
    , CandidateId INT NOT NULL
    , InterviewerId INT NOT NULL
    , [Order] SMALLINT NOT NULL
    , IsGo BIT NOT NULL
    , DateInterviewed DATE
	, CONSTRAINT PK_CandidateInterviewe PRIMARY KEY CLUSTERED(Id)
    , CONSTRAINT FK_CandidateInterviewer_CandidateId FOREIGN KEY(CandidateId) REFERENCES HR.tblCandidate(Id)
    , CONSTRAINT FK_CandidateInterviewer_InterviewerId FOREIGN KEY(InterviewerId) REFERENCES HR.tblTeam(Id)
);