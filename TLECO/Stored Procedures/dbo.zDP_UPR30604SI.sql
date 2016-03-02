SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR30604SI] (@EMPLOYID char(15), @SEQNUMBR int, @EXMFRFED tinyint, @FDFLGSTS char(7), @MarriedWithholdAsSingle tinyint, @FEDEXMPT smallint, @ADFDWHDG numeric(19,5), @LastNameDiffOnSSCard tinyint, @CREATDDT datetime, @MODIFDT datetime, @EmployeeSignature char(41), @Workflow_Status smallint, @SupervisorADLogin char(85), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .UPR30604 (EMPLOYID, SEQNUMBR, EXMFRFED, FDFLGSTS, MarriedWithholdAsSingle, FEDEXMPT, ADFDWHDG, LastNameDiffOnSSCard, CREATDDT, MODIFDT, EmployeeSignature, Workflow_Status, SupervisorADLogin) VALUES ( @EMPLOYID, @SEQNUMBR, @EXMFRFED, @FDFLGSTS, @MarriedWithholdAsSingle, @FEDEXMPT, @ADFDWHDG, @LastNameDiffOnSSCard, @CREATDDT, @MODIFDT, @EmployeeSignature, @Workflow_Status, @SupervisorADLogin) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30604SI] TO [DYNGRP]
GO
