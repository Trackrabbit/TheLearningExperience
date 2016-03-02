SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5011SS_2] (@DEX_ROW_ID int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, JRNENTRY, SEQNUMBR, ACTINDX, NC_IC_Account_Type, TRXAMNT, SOURCDOC, REFRENCE, DCSTATUS, TRXDATE, DEX_ROW_ID FROM .NCIC5011 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5011SS_2] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5011SS_2] TO [public]
GO