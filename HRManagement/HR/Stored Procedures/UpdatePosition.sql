CREATE PROCEDURE HR.UpdatePosition(
	@id INT
	, @position VARCHAR(100)
)
AS
SET NOCOUNT ON

UPDATE HR.tblPosition
SET Position = @position
WHERE Id = @id

