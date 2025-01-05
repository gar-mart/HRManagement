CREATE PROCEDURE HR.AddPosition(
	@position VARCHAR(100)
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblPosition(Position)
VALUES(@position)

SELECT @newId = SCOPE_IDENTITY()

