﻿CREATE PROCEDURE HR.AddAgency(
	@agency VARCHAR(100)
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblAgency(Agency)
VALUES(@agency)

SELECT @newId = SCOPE_IDENTITY()

