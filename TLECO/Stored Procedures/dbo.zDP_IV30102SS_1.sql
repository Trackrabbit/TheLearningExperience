SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30102SS_1] (@SMRYTYPE smallint, @ITEMNMBR char(31), @LOCNCODE char(11), @YEAR1 smallint, @SMRYPMTH smallint) AS  set nocount on SELECT TOP 1  ITEMNMBR, LOCNCODE, SMRYTYPE, SMRYPMTH, YEAR1, SMRYQTYS, SMRYCOST, SMRYSALS, SMMRYDPNDNTUSGQTY, SMMRYDPNDNTUSGCST, SMMRYPRJCTDUSGQTY, DEX_ROW_ID FROM .IV30102 WHERE SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 = @YEAR1 AND SMRYPMTH = @SMRYPMTH ORDER BY SMRYTYPE ASC, ITEMNMBR ASC, LOCNCODE ASC, YEAR1 ASC, SMRYPMTH ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30102SS_1] TO [DYNGRP]
GO
