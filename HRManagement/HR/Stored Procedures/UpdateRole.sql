CREATE PROCEDURE HR.UpdateRole(
	@id INT
	, @role VARCHAR(100)
)
AS
SET NOCOUNT ON

UPDATE HR.tblRole
SET Role = @role
WHERE Id = @id

