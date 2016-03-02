SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030L_3] (@PRODID_RS smallint, @fileNumber_RS smallint, @companyID_RS smallint, @PRODID_RE smallint, @fileNumber_RE smallint, @companyID_RE smallint) AS  set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 ORDER BY PRODID DESC, fileNumber DESC, companyID DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE PRODID = @PRODID_RS AND fileNumber BETWEEN @fileNumber_RS AND @fileNumber_RE AND companyID BETWEEN @companyID_RS AND @companyID_RE ORDER BY PRODID DESC, fileNumber DESC, companyID DESC END ELSE BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND fileNumber BETWEEN @fileNumber_RS AND @fileNumber_RE AND companyID BETWEEN @companyID_RS AND @companyID_RE ORDER BY PRODID DESC, fileNumber DESC, companyID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030L_3] TO [DYNGRP]
GO
