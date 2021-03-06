SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4630502F_3] (@DOCTYPE_RS smallint, @VCHNUMWK_RS char(17), @DOCTYPE_RE smallint, @VCHNUMWK_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, DEX_ROW_ID FROM .B4630502 ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, DEX_ROW_ID FROM .B4630502 WHERE DOCTYPE = @DOCTYPE_RS AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, DEX_ROW_ID FROM .B4630502 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4630502F_3] TO [DYNGRP]
GO
