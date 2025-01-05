CREATE PROCEDURE HR.ReturnFileById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnFileById 1
SELECT
	a.Id
    , a.IsUserPicture
    , a.FileName
    , a.FileFriendlyName
    , a.CandidateId
    , b.FirstName
    , b.LastName
    , c.Position
    , d.Role
    , e.Campaign
    , e.CampaignDate
    , f.Agency
FROM HR.tblFile a
INNER JOIN HR.tblCandidate b ON a.CandidateId = b.Id
INNER JOIN HR.tblPosition c ON b.PositionId = c.Id
INNER JOIN HR.tblRole d ON b.RoleId = d.Id
INNER JOIN HR.tblCampaign e ON b.CampaignId = e.Id
INNER JOIN HR.tblAgency f ON b.AgencyId = f.Id
WHERE a.Id = @id

