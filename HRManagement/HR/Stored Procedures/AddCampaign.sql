CREATE PROCEDURE HR.AddCampaign(
	@campaign VARCHAR(100)
	, @campaignDate DATE
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblCampaign(Campaign, CampaignDate)
VALUES(@campaign, @campaignDate)

SELECT @newId = SCOPE_IDENTITY()

