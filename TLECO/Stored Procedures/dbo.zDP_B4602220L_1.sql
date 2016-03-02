SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602220L_1] (@DOCNUMBR_RS char(21), @RMDTYPAL_RS smallint, @APFRDCNM_RS char(21), @APFRDCTY_RS smallint, @BSSI_Consecutive_Num_RS int, @DOCNUMBR_RE char(21), @RMDTYPAL_RE smallint, @APFRDCNM_RE char(21), @APFRDCTY_RE smallint, @BSSI_Consecutive_Num_RE int) AS /* 12.00.0270.000 */ set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, BSSI_Consecutive_Num, USERID, APFRDCNM, APFRDCTY, DATE1, CURTRXAM, JRNENTRY, BSSI_Tenant_Lease_Number, LOCNCODE, CUSTNMBR, BSSI_Apply_Status, DEX_ROW_ID FROM .B4602220 ORDER BY DOCNUMBR DESC, RMDTYPAL DESC, APFRDCNM DESC, APFRDCTY DESC, BSSI_Consecutive_Num DESC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, BSSI_Consecutive_Num, USERID, APFRDCNM, APFRDCTY, DATE1, CURTRXAM, JRNENTRY, BSSI_Tenant_Lease_Number, LOCNCODE, CUSTNMBR, BSSI_Apply_Status, DEX_ROW_ID FROM .B4602220 WHERE DOCNUMBR = @DOCNUMBR_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND BSSI_Consecutive_Num BETWEEN @BSSI_Consecutive_Num_RS AND @BSSI_Consecutive_Num_RE ORDER BY DOCNUMBR DESC, RMDTYPAL DESC, APFRDCNM DESC, APFRDCTY DESC, BSSI_Consecutive_Num DESC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, BSSI_Consecutive_Num, USERID, APFRDCNM, APFRDCTY, DATE1, CURTRXAM, JRNENTRY, BSSI_Tenant_Lease_Number, LOCNCODE, CUSTNMBR, BSSI_Apply_Status, DEX_ROW_ID FROM .B4602220 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND APFRDCNM BETWEEN @APFRDCNM_RS AND @APFRDCNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE AND BSSI_Consecutive_Num BETWEEN @BSSI_Consecutive_Num_RS AND @BSSI_Consecutive_Num_RE ORDER BY DOCNUMBR DESC, RMDTYPAL DESC, APFRDCNM DESC, APFRDCTY DESC, BSSI_Consecutive_Num DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602220L_1] TO [DYNGRP]
GO
