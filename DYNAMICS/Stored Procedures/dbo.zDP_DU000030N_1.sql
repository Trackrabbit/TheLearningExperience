SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030N_1] (@BS int, @fileNumber smallint, @PRODID smallint, @DEX_ROW_ID int, @fileNumber_RS smallint, @PRODID_RS smallint, @fileNumber_RE smallint, @PRODID_RE smallint) AS  set nocount on IF @fileNumber_RS IS NULL BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE ( fileNumber = @fileNumber AND PRODID = @PRODID AND DEX_ROW_ID > @DEX_ROW_ID OR fileNumber = @fileNumber AND PRODID > @PRODID OR fileNumber > @fileNumber ) ORDER BY fileNumber ASC, PRODID ASC, DEX_ROW_ID ASC END ELSE IF @fileNumber_RS = @fileNumber_RE BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE fileNumber = @fileNumber_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( fileNumber = @fileNumber AND PRODID = @PRODID AND DEX_ROW_ID > @DEX_ROW_ID OR fileNumber = @fileNumber AND PRODID > @PRODID OR fileNumber > @fileNumber ) ORDER BY fileNumber ASC, PRODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE fileNumber BETWEEN @fileNumber_RS AND @fileNumber_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( fileNumber = @fileNumber AND PRODID = @PRODID AND DEX_ROW_ID > @DEX_ROW_ID OR fileNumber = @fileNumber AND PRODID > @PRODID OR fileNumber > @fileNumber ) ORDER BY fileNumber ASC, PRODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030N_1] TO [DYNGRP]
GO
