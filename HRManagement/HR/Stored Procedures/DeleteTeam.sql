﻿CREATE PROCEDURE HR.DeleteTeam(
	@id INT
)
AS
SET NOCOUNT ON

UPDATE HR.tblTeam
SET IsActive = 0
WHERE Id = @id
