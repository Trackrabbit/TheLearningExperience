SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030UN_2] (@BS int, @companyID smallint, @PRODID smallint, @companyID_RS smallint, @PRODID_RS smallint, @companyID_RE smallint, @PRODID_RE smallint) AS  set nocount on IF @companyID_RS IS NULL BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE ( companyID = @companyID AND PRODID > @PRODID OR companyID > @companyID ) ORDER BY companyID ASC, PRODID ASC, DEX_ROW_ID ASC END ELSE IF @companyID_RS = @companyID_RE BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE companyID = @companyID_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( companyID = @companyID AND PRODID > @PRODID OR companyID > @companyID ) ORDER BY companyID ASC, PRODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, fileNumber, companyID, errornum, errordes, Status, DEX_ROW_ID FROM .DU000030 WHERE companyID BETWEEN @companyID_RS AND @companyID_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND ( companyID = @companyID AND PRODID > @PRODID OR companyID > @companyID ) ORDER BY companyID ASC, PRODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030UN_2] TO [DYNGRP]
GO
