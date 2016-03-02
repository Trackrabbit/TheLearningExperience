SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5001SS_1] (@NC_Trigger_Account_Index int, @NCTrigAcctNumStr char(129)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  NCTMPLID, DSCRIPTN, NC_Trigger_Account_Index, NCTrigAcctNumStr, NC_Src_Account_Index, NCSrcANumStr, NC_Src_IC_Account_Index, NCSrcICANumStr, NC_Dest_Account_Index, NCDestAcctNumStr, NC_Dest_IC_Account_Index, NCDestICAcctNumStrr, INTERID, CMPNYNAM, NC_Dest_IntercompanyID, NCICCompName, NCMESGESTR_1, NCMESGESTR_2, NCMESGESTR_3, NCMESGESTR_4, NCMESGESTR_5, DEX_ROW_ID FROM .NCIC5001 WHERE NC_Trigger_Account_Index = @NC_Trigger_Account_Index AND NCTrigAcctNumStr = @NCTrigAcctNumStr ORDER BY NC_Trigger_Account_Index ASC, NCTrigAcctNumStr ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5001SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5001SS_1] TO [public]
GO
