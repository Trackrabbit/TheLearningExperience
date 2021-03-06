SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27657SS_1] (@SEQNUMBR int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  SEQNUMBR, ME_Minimum_Password_Leng, ME_Password_Expiration_D, ME_Special_Check_Setup_S, ME_Special_SA_Security, PRINTBLANKCHECKMENU, SETSECURITY, PAYABLESTHRESHOLD, PAYROLLTHRESHOLD, CANADIANPAYROLLTHRESHOLD, MENUMOFAPPROVERS, MEPRINTSIGWHEN, MEDEFAULTFILEPATH1, MEDEFAULTFILENAME1, MEDEFAULTFILEPATH2, MEDEFAULTFILENAME2, SIGNATUREIDUPR, SIGNATUREIDCDP, EFTSECURITY, MEWFAPPROVAL, MESPLITBATCH, MEDDSECURITY, DEX_ROW_ID FROM .ME27657 WHERE SEQNUMBR = @SEQNUMBR ORDER BY SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27657SS_1] TO [DYNGRP]
GO
