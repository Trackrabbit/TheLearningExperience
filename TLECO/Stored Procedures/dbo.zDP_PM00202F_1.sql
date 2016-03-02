SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00202F_1] (@HISTTYPE_RS smallint, @VENDORID_RS char(15), @YEAR1_RS smallint, @PERIODID_RS smallint, @HISTTYPE_RE smallint, @VENDORID_RE char(15), @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @HISTTYPE_RS IS NULL BEGIN SELECT TOP 25  VENDORID, PERIODID, YEAR1, HISTTYPE, AMBLDLIF, AMTPDLIF, TEN99ALIF, DISAVLIF, DISTKNLF, DISLSTLF, FINCHLIF, WROFSLIF, RTRNSLIF, TRDTKLIF, NFNCHLIF, NOINVLIF, Withholding_LIFE, DEX_ROW_ID FROM .PM00202 ORDER BY HISTTYPE ASC, VENDORID ASC, YEAR1 ASC, PERIODID ASC END ELSE IF @HISTTYPE_RS = @HISTTYPE_RE BEGIN SELECT TOP 25  VENDORID, PERIODID, YEAR1, HISTTYPE, AMBLDLIF, AMTPDLIF, TEN99ALIF, DISAVLIF, DISTKNLF, DISLSTLF, FINCHLIF, WROFSLIF, RTRNSLIF, TRDTKLIF, NFNCHLIF, NOINVLIF, Withholding_LIFE, DEX_ROW_ID FROM .PM00202 WHERE HISTTYPE = @HISTTYPE_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY HISTTYPE ASC, VENDORID ASC, YEAR1 ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, PERIODID, YEAR1, HISTTYPE, AMBLDLIF, AMTPDLIF, TEN99ALIF, DISAVLIF, DISTKNLF, DISLSTLF, FINCHLIF, WROFSLIF, RTRNSLIF, TRDTKLIF, NFNCHLIF, NOINVLIF, Withholding_LIFE, DEX_ROW_ID FROM .PM00202 WHERE HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY HISTTYPE ASC, VENDORID ASC, YEAR1 ASC, PERIODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00202F_1] TO [DYNGRP]
GO
