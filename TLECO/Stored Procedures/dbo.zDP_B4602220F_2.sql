SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602220F_2] (@DOCNUMBR_RS char(21), @RMDTYPAL_RS smallint, @APFRDCNM_RS char(21), @APFRDCTY_RS smallint, @DOCNUMBR_RE char(21), @RMDTYPAL_RE smallint, @APFRDCNM_RE char(21), @APFRDCTY_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, BSSI_Consecutive_Num, USERID, APFRDCNM, APFRDCTY, DATE1, CURTRXAM, JRNENTRY, BSSI_Tenant_Lease_Number, LOCNCODE, CUSTNMBR, BSSI_Apply_Status, DEX_ROW_ID FROM .B4602220 ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, APFRDCNM ASC, APFRDCTY ASC, DEX_ROW_ID ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, BSSI_Consecutive_Num, USERID, APFRDCNM, APFRDCTY, DATE1, CURTRXAM, JRNENTRY, BSSI_Tenant_Lease_Number, LOCNCODE, CUSTNMBR, BSSI_Apply_Status, DEX_ROW_ID FROM .B4602220 WHERE DOCNUMBR = @DOCNUMBR_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, APFRDCNM ASC, APFRDCTY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, BSSI_Consecutive_Num, USERID, APFRDCNM, APFRDCTY, DATE1, CURTRXAM, JRNENTRY, BSSI_Tenant_Lease_Number, LOCNCODE, CUSTNMBR, BSSI_Apply_Status, DEX_ROW_ID FROM .B4602220 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, APFRDCNM ASC, APFRDCTY ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602220F_2] TO [DYNGRP]
GO
