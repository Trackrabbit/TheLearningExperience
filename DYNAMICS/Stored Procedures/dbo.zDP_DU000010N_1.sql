SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000010N_1] (@BS int, @PRODID smallint, @fileNumber smallint, @PRODID_RS smallint, @fileNumber_RS smallint, @PRODID_RE smallint, @fileNumber_RE smallint) AS  set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE ( PRODID = @PRODID AND fileNumber > @fileNumber OR PRODID > @PRODID ) ORDER BY PRODID ASC, fileNumber ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE PRODID = @PRODID_RS AND fileNumber BETWEEN @fileNumber_RS AND @fileNumber_RE AND ( PRODID = @PRODID AND fileNumber > @fileNumber OR PRODID > @PRODID ) ORDER BY PRODID ASC, fileNumber ASC END ELSE BEGIN SELECT TOP 25  PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME, DEX_ROW_ID FROM .DU000010 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND fileNumber BETWEEN @fileNumber_RS AND @fileNumber_RE AND ( PRODID = @PRODID AND fileNumber > @fileNumber OR PRODID > @PRODID ) ORDER BY PRODID ASC, fileNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000010N_1] TO [DYNGRP]
GO
