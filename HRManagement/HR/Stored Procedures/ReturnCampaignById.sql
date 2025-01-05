CREATE PROCEDURE HR.ReturnCampaignById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnCampaignById 1

SELECT
	Id
	, Campaign
	, CampaignDate
FROM HR.tblCampaign
WHERE Id = @id


