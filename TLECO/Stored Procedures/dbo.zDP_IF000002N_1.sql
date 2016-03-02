SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000002N_1] (@BS int, @SGMNTID char(67), @SGMNTID_RS char(67), @SGMNTID_RE char(67)) AS  set nocount on IF @SGMNTID_RS IS NULL BEGIN SELECT TOP 25  SGMNTID, if_fund_account_index, if_cfct_account_index, ACTDESCR, DEX_ROW_ID FROM .IF000002 WHERE ( SGMNTID > @SGMNTID ) ORDER BY SGMNTID ASC END ELSE IF @SGMNTID_RS = @SGMNTID_RE BEGIN SELECT TOP 25  SGMNTID, if_fund_account_index, if_cfct_account_index, ACTDESCR, DEX_ROW_ID FROM .IF000002 WHERE SGMNTID = @SGMNTID_RS AND ( SGMNTID > @SGMNTID ) ORDER BY SGMNTID ASC END ELSE BEGIN SELECT TOP 25  SGMNTID, if_fund_account_index, if_cfct_account_index, ACTDESCR, DEX_ROW_ID FROM .IF000002 WHERE SGMNTID BETWEEN @SGMNTID_RS AND @SGMNTID_RE AND ( SGMNTID > @SGMNTID ) ORDER BY SGMNTID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000002N_1] TO [DYNGRP]
GO
