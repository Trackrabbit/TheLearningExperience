SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPSLH01SI] (@EMPLOYID char(15), @PAYRCORD char(7), @EFFECTIVEDATE_I datetime, @SEQNUMBR int, @PAYRTAMT numeric(19,5), @PAYUNIT char(25), @PAYUNPER smallint, @PAYPEROD smallint, @PAYPRPRD numeric(19,5), @ANNUALSALARY_I numeric(19,5), @CHANGEREASON_I char(31), @USERID char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRPSLH01 (EMPLOYID, PAYRCORD, EFFECTIVEDATE_I, SEQNUMBR, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, ANNUALSALARY_I, CHANGEREASON_I, USERID, CHANGEDATE_I) VALUES ( @EMPLOYID, @PAYRCORD, @EFFECTIVEDATE_I, @SEQNUMBR, @PAYRTAMT, @PAYUNIT, @PAYUNPER, @PAYPEROD, @PAYPRPRD, @ANNUALSALARY_I, @CHANGEREASON_I, @USERID, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPSLH01SI] TO [DYNGRP]
GO
