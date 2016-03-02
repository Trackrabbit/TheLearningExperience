SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30102L_3] (@ITEMNMBR_RS char(31), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 ORDER BY ITEMNMBR DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 WHERE ITEMNMBR = @ITEMNMBR_RS ORDER BY ITEMNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ITEMNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30102L_3] TO [DYNGRP]
GO