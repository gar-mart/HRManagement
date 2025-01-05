CREATE PROCEDURE HR.ReturnCandidateById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnCandidateById 1

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
WHERE a.Id = @id
