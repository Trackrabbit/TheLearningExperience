SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5013SS_1] (@USERID char(15), @JRNENTRY int, @NC_Dest_IC_Company_DB char(31), @NC_Dest_IC_Journal_Entry int, @NC_Dest_IC_Sequence int, @NC_Dest_IC_Account_Index int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, JRNENTRY, NC_Dest_IC_Company_DB, NC_Dest_IC_Journal_Entry, NC_Dest_IC_Sequence, NC_Dest_IC_Posted, NC_Dest_IC_Account_Numbe, NC_Dest_IC_Account_Index, CURRNIDX, TRXAMNT, DEX_ROW_ID FROM .NCIC5013 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND NC_Dest_IC_Company_DB = @NC_Dest_IC_Company_DB AND NC_Dest_IC_Journal_Entry = @NC_Dest_IC_Journal_Entry AND NC_Dest_IC_Sequence = @NC_Dest_IC_Sequence AND NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index ORDER BY USERID ASC, JRNENTRY ASC, NC_Dest_IC_Company_DB ASC, NC_Dest_IC_Journal_Entry ASC, NC_Dest_IC_Sequence ASC, NC_Dest_IC_Account_Index ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013SS_1] TO [public]
GO
