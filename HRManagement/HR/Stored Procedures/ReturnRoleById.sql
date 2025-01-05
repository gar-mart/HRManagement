CREATE PROCEDURE HR.ReturnRoleById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnRoleById 1

SELECT
	Id
	, Role
FROM HR.tblRole
WHERE Id = @id


