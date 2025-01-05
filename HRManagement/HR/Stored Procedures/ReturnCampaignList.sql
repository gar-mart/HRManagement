CREATE PROCEDURE HR.ReturnCampaignList
AS
SET NOCOUNT ON

-- EXEC HR.ReturnCampaignList

SELECT
	Id
	, Campaign
	, CampaignDate
FROM HR.tblCampaign
ORDER BY CampaignDate DESC

