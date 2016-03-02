SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00104L_1] (@HISTTYPE_RS smallint, @CUSTNMBR_RS char(15), @YEAR1_RS smallint, @PERIODID_RS smallint, @HISTTYPE_RE smallint, @CUSTNMBR_RE char(15), @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @HISTTYPE_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, PERIODID, YEAR1, HISTTYPE, NUMOFINV, SMRYSALS, SMRYCRCD, SMRYCOST, SMRYWROF, SMRYDISC, SMRYRTNG, SMRYFCHR, SMRYWFCH, SMRYRTRN, DEX_ROW_ID FROM .RM00104 ORDER BY HISTTYPE DESC, CUSTNMBR DESC, YEAR1 DESC, PERIODID DESC END ELSE IF @HISTTYPE_RS = @HISTTYPE_RE BEGIN SELECT TOP 25  CUSTNMBR, PERIODID, YEAR1, HISTTYPE, NUMOFINV, SMRYSALS, SMRYCRCD, SMRYCOST, SMRYWROF, SMRYDISC, SMRYRTNG, SMRYFCHR, SMRYWFCH, SMRYRTRN, DEX_ROW_ID FROM .RM00104 WHERE HISTTYPE = @HISTTYPE_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY HISTTYPE DESC, CUSTNMBR DESC, YEAR1 DESC, PERIODID DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, PERIODID, YEAR1, HISTTYPE, NUMOFINV, SMRYSALS, SMRYCRCD, SMRYCOST, SMRYWROF, SMRYDISC, SMRYRTNG, SMRYFCHR, SMRYWFCH, SMRYRTRN, DEX_ROW_ID FROM .RM00104 WHERE HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY HISTTYPE DESC, CUSTNMBR DESC, YEAR1 DESC, PERIODID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00104L_1] TO [DYNGRP]
GO
