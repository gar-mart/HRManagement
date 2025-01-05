CREATE PROCEDURE HR.UpdateTeam(
	@id INT
    , @firstName NVARCHAR(50)
    , @lastName NVARCHAR(50)
    , @isInterviewer BIT
)
AS
SET NOCOUNT ON

UPDATE HR.tblTeam SET
	FirstName = @firstName
    , LastName = @lastName
    , IsInterviewer = @isInterviewer
WHERE Id = @id

