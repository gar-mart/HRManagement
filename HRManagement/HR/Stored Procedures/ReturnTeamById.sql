CREATE PROCEDURE HR.ReturnTeamById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnTeamById 1

SELECT
	Id
    , FirstName
    , LastName
    , IsInterviewer
    , IsActive
FROM HR.tblTeam
WHERE Id = @id


