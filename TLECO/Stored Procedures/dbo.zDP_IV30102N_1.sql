SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30102N_1] (@BS int, @SMRYTYPE smallint, @ITEMNMBR char(31), @LOCNCODE char(11), @YEAR1 smallint, @SMRYPMTH smallint, @SMRYTYPE_RS smallint, @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @YEAR1_RS smallint, @SMRYPMTH_RS smallint, @SMRYTYPE_RE smallint, @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11), @YEAR1_RE smallint, @SMRYPMTH_RE smallint) AS  set nocount on IF @SMRYTYPE_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 WHERE ( SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 = @YEAR1 AND SMRYPMTH > @SMRYPMTH OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 > @YEAR1 OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR > @ITEMNMBR OR SMRYTYPE > @SMRYTYPE ) ORDER BY SMRYTYPE ASC, ITEMNMBR ASC, LOCNCODE ASC, YEAR1 ASC, SMRYPMTH ASC END ELSE IF @SMRYTYPE_RS = @SMRYTYPE_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 WHERE SMRYTYPE = @SMRYTYPE_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND SMRYPMTH BETWEEN @SMRYPMTH_RS AND @SMRYPMTH_RE AND ( SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 = @YEAR1 AND SMRYPMTH > @SMRYPMTH OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 > @YEAR1 OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR > @ITEMNMBR OR SMRYTYPE > @SMRYTYPE ) ORDER BY SMRYTYPE ASC, ITEMNMBR ASC, LOCNCODE ASC, YEAR1 ASC, SMRYPMTH ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 WHERE SMRYTYPE BETWEEN @SMRYTYPE_RS AND @SMRYTYPE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND SMRYPMTH BETWEEN @SMRYPMTH_RS AND @SMRYPMTH_RE AND ( SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 = @YEAR1 AND SMRYPMTH > @SMRYPMTH OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 > @YEAR1 OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR SMRYTYPE = @SMRYTYPE AND ITEMNMBR > @ITEMNMBR OR SMRYTYPE > @SMRYTYPE ) ORDER BY SMRYTYPE ASC, ITEMNMBR ASC, LOCNCODE ASC, YEAR1 ASC, SMRYPMTH ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30102N_1] TO [DYNGRP]
GO