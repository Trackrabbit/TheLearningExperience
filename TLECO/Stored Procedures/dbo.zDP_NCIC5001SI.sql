SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5001SI] (@NCTMPLID char(15), @DSCRIPTN char(31), @NC_Trigger_Account_Index int, @NCTrigAcctNumStr char(129), @NC_Src_Account_Index int, @NCSrcANumStr char(129), @NC_Src_IC_Account_Index int, @NCSrcICANumStr char(129), @NC_Dest_Account_Index int, @NCDestAcctNumStr char(129), @NC_Dest_IC_Account_Index int, @NCDestICAcctNumStrr char(129), @INTERID char(5), @CMPNYNAM char(65), @NC_Dest_IntercompanyID char(5), @NCICCompName char(31), @NCMESGESTR_1 char(255), @NCMESGESTR_2 char(255), @NCMESGESTR_3 char(255), @NCMESGESTR_4 char(255), @NCMESGESTR_5 char(255), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC5001 (NCTMPLID, DSCRIPTN, NC_Trigger_Account_Index, NCTrigAcctNumStr, NC_Src_Account_Index, NCSrcANumStr, NC_Src_IC_Account_Index, NCSrcICANumStr, NC_Dest_Account_Index, NCDestAcctNumStr, NC_Dest_IC_Account_Index, NCDestICAcctNumStrr, INTERID, CMPNYNAM, NC_Dest_IntercompanyID, NCICCompName, NCMESGESTR_1, NCMESGESTR_2, NCMESGESTR_3, NCMESGESTR_4, NCMESGESTR_5) VALUES ( @NCTMPLID, @DSCRIPTN, @NC_Trigger_Account_Index, @NCTrigAcctNumStr, @NC_Src_Account_Index, @NCSrcANumStr, @NC_Src_IC_Account_Index, @NCSrcICANumStr, @NC_Dest_Account_Index, @NCDestAcctNumStr, @NC_Dest_IC_Account_Index, @NCDestICAcctNumStrr, @INTERID, @CMPNYNAM, @NC_Dest_IntercompanyID, @NCICCompName, @NCMESGESTR_1, @NCMESGESTR_2, @NCMESGESTR_3, @NCMESGESTR_4, @NCMESGESTR_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5001SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5001SI] TO [public]
GO
