SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000010SS_1] (@PRODID smallint, @fileNumber smallint) AS  set nocount on SELECT TOP 1  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE PRODID = @PRODID AND fileNumber = @fileNumber ORDER BY PRODID ASC, fileNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000010SS_1] TO [DYNGRP]
GO
