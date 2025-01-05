CREATE PROCEDURE HR.ReturnTeamList
AS
SET NOCOUNT ON

-- EXEC HR.ReturnTeamList

SELECT
	Id
    , FirstName
    , LastName
    , IsInterviewer
    , IsActive
FROM HR.tblTeam
ORDER BY FirstName, LastName

