CREATE PROCEDURE HR.ReturnPositionById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnPositionById 1

SELECT
	Id
	, Position
FROM HR.tblPosition
WHERE Id = @id


