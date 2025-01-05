CREATE PROCEDURE HR.UpdateAgency(
	@id INT
	, @agency VARCHAR(100)
)
AS
SET NOCOUNT ON

UPDATE HR.tblAgency
SET Agency = @agency
WHERE Id = @id

