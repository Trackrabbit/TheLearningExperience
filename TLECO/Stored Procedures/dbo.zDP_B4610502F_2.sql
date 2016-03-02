SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610502F_2] (@VENDORID_RS char(15), @LOCNCODE_RS char(11), @BSSI_Ground_Lease_Number_RS char(25), @YEAR1_RS smallint, @PERIODID_RS smallint, @VENDORID_RE char(15), @LOCNCODE_RE char(11), @BSSI_Ground_Lease_Number_RE char(25), @YEAR1_RE smallint, @PERIODID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, BSSI_Transfered_Amount, DEX_ROW_ID FROM .B4610502 ORDER BY VENDORID ASC, LOCNCODE ASC, BSSI_Ground_Lease_Number ASC, YEAR1 ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, BSSI_Transfered_Amount, DEX_ROW_ID FROM .B4610502 WHERE VENDORID = @VENDORID_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY VENDORID ASC, LOCNCODE ASC, BSSI_Ground_Lease_Number ASC, YEAR1 ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, BSSI_Transfered_Amount, DEX_ROW_ID FROM .B4610502 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY VENDORID ASC, LOCNCODE ASC, BSSI_Ground_Lease_Number ASC, YEAR1 ASC, PERIODID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610502F_2] TO [DYNGRP]
GO
