CREATE PROCEDURE HR.UpdateFile(
	@id INT
    , @candidateId INT
    , @isUserPicture BIT
    , @fileName VARCHAR(255)
    , @fileFriendlyName VARCHAR(255)
)
AS
SET NOCOUNT ON

UPDATE HR.tblFile SET
    CandidateId = @candidateId
    , IsUserPicture = @isUserPicture
    , FileName = @fileName
    , FileFriendlyName = @fileFriendlyName
WHERE Id = @id

