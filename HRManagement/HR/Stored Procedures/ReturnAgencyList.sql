CREATE PROCEDURE HR.ReturnAgencyList
AS
SET NOCOUNT ON

-- EXEC HR.ReturnAgencyList

SELECT
	Id
	, Agency
FROM HR.tblAgency
ORDER BY Agency

