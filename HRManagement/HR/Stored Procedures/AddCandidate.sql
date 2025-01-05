CREATE PROCEDURE HR.AddCandidate(
    @isGo BIT
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
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblCandidate(
    IsActive
    , IsGo
    , WouldHire
    , PositionId
    , RoleId
    , CampaignId
    , AgencyId
    , FirstName
    , LastName
    , Email
    , Phone
    , DateFound
    , Notes
)
VALUES(
    1
    , @isGo
    , @wouldHire
    , @positionId
    , @roleId
    , @campaignId
    , @agencyId
    , @firstName
    , @lastName
    , @email
    , @phone
    , @dateFound
    , @notes
)

SELECT @newId = SCOPE_IDENTITY()

