CREATE PROCEDURE HR.ReturnAgencyById(
	@id INT
)
AS
SET NOCOUNT ON

-- EXEC HR.ReturnAgencyById 1

SELECT
	Id
	, Agency
FROM HR.tblAgency
WHERE Id = @id


