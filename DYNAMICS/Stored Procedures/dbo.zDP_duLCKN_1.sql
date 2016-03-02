SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_duLCKN_1] (@BS int, @companyID smallint, @INTERID char(5), @companyID_RS smallint, @INTERID_RS char(5), @companyID_RE smallint, @INTERID_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @companyID_RS IS NULL BEGIN SELECT TOP 25  companyID, INTERID, duWorkstationID, DEX_ROW_ID FROM .duLCK WHERE ( companyID = @companyID AND INTERID > @INTERID OR companyID > @companyID ) ORDER BY companyID ASC, INTERID ASC END ELSE IF @companyID_RS = @companyID_RE BEGIN SELECT TOP 25  companyID, INTERID, duWorkstationID, DEX_ROW_ID FROM .duLCK WHERE companyID = @companyID_RS AND INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND ( companyID = @companyID AND INTERID > @INTERID OR companyID > @companyID ) ORDER BY companyID ASC, INTERID ASC END ELSE BEGIN SELECT TOP 25  companyID, INTERID, duWorkstationID, DEX_ROW_ID FROM .duLCK WHERE companyID BETWEEN @companyID_RS AND @companyID_RE AND INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND ( companyID = @companyID AND INTERID > @INTERID OR companyID > @companyID ) ORDER BY companyID ASC, INTERID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_duLCKN_1] TO [DYNGRP]
GO
