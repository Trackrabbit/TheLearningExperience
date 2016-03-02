SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000010F_3] (@PRODID_RS smallint, @priorityLevel_RS smallint, @PRODID_RE smallint, @priorityLevel_RE smallint) AS  set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 ORDER BY PRODID ASC, priorityLevel ASC, DEX_ROW_ID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE PRODID = @PRODID_RS AND priorityLevel BETWEEN @priorityLevel_RS AND @priorityLevel_RE ORDER BY PRODID ASC, priorityLevel ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND priorityLevel BETWEEN @priorityLevel_RS AND @priorityLevel_RE ORDER BY PRODID ASC, priorityLevel ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000010F_3] TO [DYNGRP]
GO
