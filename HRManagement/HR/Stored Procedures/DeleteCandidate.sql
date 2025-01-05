CREATE PROCEDURE HR.DeleteCandidate(
	@id INT
)
AS
SET NOCOUNT ON

UPDATE HR.tblCandidate
SET IsActive = 0
WHERE Id = @id
