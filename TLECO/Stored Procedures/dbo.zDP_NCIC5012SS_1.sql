SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5012SS_1] (@USERID char(15), @JRNENTRY int, @NC_Source_IC_Journal_Ent int, @NC_Source_IC_Sequence int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, JRNENTRY, NC_Source_IC_Journal_Ent, NC_Source_IC_Sequence, NC_Source_IC_Posted, NC_Source_IC_Account_Ind, TRXAMNT, DEX_ROW_ID FROM .NCIC5012 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND NC_Source_IC_Journal_Ent = @NC_Source_IC_Journal_Ent AND NC_Source_IC_Sequence = @NC_Source_IC_Sequence ORDER BY USERID ASC, JRNENTRY ASC, NC_Source_IC_Journal_Ent ASC, NC_Source_IC_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012SS_1] TO [public]
GO
