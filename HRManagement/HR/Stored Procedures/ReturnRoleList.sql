﻿CREATE PROCEDURE HR.ReturnRoleList
AS
SET NOCOUNT ON

-- EXEC HR.ReturnRoleList

SELECT
	Id
	, Role
FROM HR.tblRole
ORDER BY Role

