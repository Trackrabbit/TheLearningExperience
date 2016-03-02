SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20500SI] (@CHEKBKID char(15), @RECONUM numeric(19,5), @Recond tinyint, @StmntDate datetime, @StmntBal numeric(19,5), @CUTOFFBAL numeric(19,5), @ClrdPay smallint, @ClrdDep smallint, @ClrePayAmt numeric(19,5), @ClrdDepAmt numeric(19,5), @Cleared_Difference numeric(19,5), @OUTPAYTOT numeric(19,5), @OUTDEPTOT numeric(19,5), @IINADJTOT numeric(19,5), @DECADJTOT numeric(19,5), @ASOFBAL numeric(19,5), @CUTOFDAT datetime, @GLPOSTDT datetime, @MDFUSRID char(15), @MODIFDT datetime, @CURNCYID char(15), @NOTEINDX numeric(19,5), @RCRDSTTS smallint, @Reconcile_Messages binary(4), @AUDITTRAIL char(13), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM20500 (CHEKBKID, RECONUM, Recond, StmntDate, StmntBal, CUTOFFBAL, ClrdPay, ClrdDep, ClrePayAmt, ClrdDepAmt, Cleared_Difference, OUTPAYTOT, OUTDEPTOT, IINADJTOT, DECADJTOT, ASOFBAL, CUTOFDAT, GLPOSTDT, MDFUSRID, MODIFDT, CURNCYID, NOTEINDX, RCRDSTTS, Reconcile_Messages, AUDITTRAIL) VALUES ( @CHEKBKID, @RECONUM, @Recond, @StmntDate, @StmntBal, @CUTOFFBAL, @ClrdPay, @ClrdDep, @ClrePayAmt, @ClrdDepAmt, @Cleared_Difference, @OUTPAYTOT, @OUTDEPTOT, @IINADJTOT, @DECADJTOT, @ASOFBAL, @CUTOFDAT, @GLPOSTDT, @MDFUSRID, @MODIFDT, @CURNCYID, @NOTEINDX, @RCRDSTTS, @Reconcile_Messages, @AUDITTRAIL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20500SI] TO [DYNGRP]
GO
