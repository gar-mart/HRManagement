CREATE PROCEDURE HR.UpdateCampaign(
	@id INT
	, @campaign VARCHAR(100)
	, @campaignDate DATE
)
AS
SET NOCOUNT ON

UPDATE HR.tblCampaign SET
	Campaign = @campaign
	, CampaignDate = @campaignDate
WHERE Id = @id

