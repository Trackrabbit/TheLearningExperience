SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPSLH01SS_1] (@EMPLOYID char(15), @PAYRCORD char(7), @EFFECTIVEDATE_I datetime, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  EMPLOYID, PAYRCORD, EFFECTIVEDATE_I, SEQNUMBR, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, ANNUALSALARY_I, CHANGEREASON_I, USERID, CHANGEDATE_I, DEX_ROW_ID FROM .HRPSLH01 WHERE EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I AND SEQNUMBR = @SEQNUMBR ORDER BY EMPLOYID ASC, PAYRCORD ASC, EFFECTIVEDATE_I ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPSLH01SS_1] TO [DYNGRP]
GO