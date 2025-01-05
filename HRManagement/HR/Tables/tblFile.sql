CREATE TABLE HR.tblFile (
    Id INT IDENTITY NOT NULL
    , CandidateId INT NOT NULL
    , IsUserPicture BIT NOT NULL
    , FileName VARCHAR(255) NOT NULL
    , FileFriendlyName VARCHAR(255) NOT NULL
	, CONSTRAINT PK_File PRIMARY KEY CLUSTERED(Id)
    , CONSTRAINT FK_File_CandidateId FOREIGN KEY(CandidateId) REFERENCES HR.tblCandidate(Id)
)