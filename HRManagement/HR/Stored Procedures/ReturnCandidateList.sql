CREATE PROCEDURE HR.ReturnCandidateList(
    @positionId INT  -- Pass NULL or -1 to get all
    , @roleId INT  -- Pass NULL or -1 to get all
    , @campaignId INT  -- Pass NULL or -1 to get all
    , @agencyId INT  -- Pass NULL or -1 to get all
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnCandidateList NULL, NULL, NULL, NULL

SELECT
	a.Id
    , a.IsActive
    , a.IsGo
    , a.WouldHire
    , a.PositionId
    , b.Position
    , a.RoleId
    , c.Role
    , a.CampaignId
    , d.Campaign
    , d.CampaignDate
    , a.AgencyId
    , e.Agency
    , a.FirstName
    , a.LastName
    , a.Email
    , a.Phone
    , a.DateFound
    , a.Notes
FROM HR.tblCandidate a
INNER JOIN HR.tblPosition b ON a.PositionId = b.Id
INNER JOIN HR.tblRole c ON a.RoleId = c.Id
INNER JOIN HR.tblCampaign d ON a.CampaignId = d.Id
INNER JOIN HR.tblAgency e ON a.AgencyId = e.Id
WHERE
    (a.PositionId = @positionId OR ISNULL(@positionId, -1) = -1)
    OR (a.RoleId = @roleId OR ISNULL(@roleId, -1) = -1)
    OR (a.CampaignId = @campaignId OR ISNULL(@campaignId, -1) = -1)
    OR (a.AgencyId = @agencyId OR ISNULL(@agencyId, -1) = -1)
