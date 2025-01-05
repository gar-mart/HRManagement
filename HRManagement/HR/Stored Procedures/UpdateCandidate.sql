CREATE PROCEDURE HR.UpdateCandidate(
	@id INT
    , @isGo BIT
    , @WouldHire BIT
    , @positionId INT
    , @roleId INT
    , @campaignId INT
    , @agencyId INT
    , @firstName NVARCHAR(50)
    , @lastName NVARCHAR(50)
    , @email NVARCHAR(200)
    , @phone VARCHAR(25)
    , @dateFound DATE
    , @notes NVARCHAR(MAX)
    , @lastUpdatedBy NVARCHAR(200)
)
AS
SET NOCOUNT ON

UPDATE HR.tblCandidate SET
    IsGo = @isGo
    , WouldHire = @WouldHire
    , PositionId = @positionId
    , RoleId = @roleId
    , CampaignId = @campaignId
    , AgencyId = @agencyId
    , FirstName = @firstName
    , LastName = @lastName
    , Email = @email
    , Phone = @phone
    , DateFound = @dateFound
    , Notes = @notes
    , LastUpdated = SYSDATETIME()
    , LastUpdatedBy = @lastUpdatedBy
WHERE Id = @id

