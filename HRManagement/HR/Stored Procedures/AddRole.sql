﻿CREATE PROCEDURE HR.AddRole(
	@role VARCHAR(100)
	, @newId INT = NULL OUTPUT
)
AS
SET NOCOUNT ON

INSERT INTO HR.tblRole(Role)
VALUES(@role)

SELECT @newId = SCOPE_IDENTITY()

