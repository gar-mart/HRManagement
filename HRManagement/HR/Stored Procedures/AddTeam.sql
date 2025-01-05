CREATE PROCEDURE HR.AddTeam(
    @firstName NVARCHAR(50)
    , @lastName NVARCHAR(50)
    , @isInterviewer BIT
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblTeam(FirstName, LastName, IsInterviewer, IsActive)
VALUES(@firstName, @lastName, @isInterviewer, 1)

SELECT @newId = SCOPE_IDENTITY()

