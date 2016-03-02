SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5011SS_1] (@USERID char(15), @JRNENTRY int, @SEQNUMBR int, @ACTINDX int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, JRNENTRY, SEQNUMBR, ACTINDX, NC_IC_Account_Type, TRXAMNT, SOURCDOC, REFRENCE, DCSTATUS, TRXDATE, DEX_ROW_ID FROM .NCIC5011 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND SEQNUMBR = @SEQNUMBR AND ACTINDX = @ACTINDX ORDER BY USERID ASC, JRNENTRY ASC, SEQNUMBR ASC, ACTINDX ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5011SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5011SS_1] TO [public]
GO
