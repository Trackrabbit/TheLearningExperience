SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR30604L_1] (@EMPLOYID_RS char(15), @SEQNUMBR_RS int, @EMPLOYID_RE char(15), @SEQNUMBR_RE int) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, EXMFRFED, FDFLGSTS, MarriedWithholdAsSingle, FEDEXMPT, ADFDWHDG, LastNameDiffOnSSCard, CREATDDT, MODIFDT, EmployeeSignature, Workflow_Status, SupervisorADLogin, DEX_ROW_ID FROM .UPR30604 ORDER BY EMPLOYID DESC, SEQNUMBR ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, EXMFRFED, FDFLGSTS, MarriedWithholdAsSingle, FEDEXMPT, ADFDWHDG, LastNameDiffOnSSCard, CREATDDT, MODIFDT, EmployeeSignature, Workflow_Status, SupervisorADLogin, DEX_ROW_ID FROM .UPR30604 WHERE EMPLOYID = @EMPLOYID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RE AND @SEQNUMBR_RS ORDER BY EMPLOYID DESC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, SEQNUMBR, EXMFRFED, FDFLGSTS, MarriedWithholdAsSingle, FEDEXMPT, ADFDWHDG, LastNameDiffOnSSCard, CREATDDT, MODIFDT, EmployeeSignature, Workflow_Status, SupervisorADLogin, DEX_ROW_ID FROM .UPR30604 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RE AND @SEQNUMBR_RS ORDER BY EMPLOYID DESC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30604L_1] TO [DYNGRP]
GO
