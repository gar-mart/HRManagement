CREATE PROCEDURE HR.ReturnPositionList
AS
SET NOCOUNT ON

-- EXEC HR.ReturnPositionList

SELECT
	Id
	, Position
FROM HR.tblPosition
ORDER BY Position

