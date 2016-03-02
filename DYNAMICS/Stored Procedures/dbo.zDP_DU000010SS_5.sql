SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000010SS_5] (@PRODID smallint, @versionMajor smallint, @versionMinor smallint, @versionBuild smallint, @priorityLevel smallint) AS  set nocount on SELECT TOP 1  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE PRODID = @PRODID AND versionMajor = @versionMajor AND versionMinor = @versionMinor AND versionBuild = @versionBuild AND priorityLevel = @priorityLevel ORDER BY PRODID ASC, versionMajor ASC, versionMinor ASC, versionBuild ASC, priorityLevel ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000010SS_5] TO [DYNGRP]
GO
