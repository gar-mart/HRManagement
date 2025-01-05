CREATE PROCEDURE HR.AddFile(
    @candidateId INT
    , @isUserPicture BIT
    , @fileName VARCHAR(255)
    , @fileFriendlyName VARCHAR(255)
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblFile(CandidateId, IsUserPicture, FileName, FileFriendlyName)
VALUES(@candidateId, @isUserPicture, @fileName, @fileFriendlyName)

SELECT @newId = SCOPE_IDENTITY()

