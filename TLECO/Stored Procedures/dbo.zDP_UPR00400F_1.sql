SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00400F_1] (@EMPLOYID_RS char(15), @PAYRCORD_RS char(7), @EMPLOYID_RE char(15), @PAYRCORD_RE char(7)) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, INACTIVE, PAYTYPE, BSPAYRCD, PAYRTAMT, PAYUNIT, PAYUNPER, RPTASWGS, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, SUTASTAT, FFEDTXRT, FLSTTXRT, PAYPEROD, PAYPRPRD, MXPYPPER, TipType, PAYADVNC, ACRUVACN, ACRUSTIM, WRKRCOMP, W2BXNMBR, W2BXLABL, PYADVTKN, NOTEINDX, DATAENTDFLT, SHFTCODE, PAYFACTR, BSDONRTE, PYSTPTBLID, Base_Step_Increased_On, Step, Step_Effective_Date, Step_FTE, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, DEX_ROW_ID FROM .UPR00400 ORDER BY EMPLOYID ASC, PAYRCORD ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, INACTIVE, PAYTYPE, BSPAYRCD, PAYRTAMT, PAYUNIT, PAYUNPER, RPTASWGS, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, SUTASTAT, FFEDTXRT, FLSTTXRT, PAYPEROD, PAYPRPRD, MXPYPPER, TipType, PAYADVNC, ACRUVACN, ACRUSTIM, WRKRCOMP, W2BXNMBR, W2BXLABL, PYADVTKN, NOTEINDX, DATAENTDFLT, SHFTCODE, PAYFACTR, BSDONRTE, PYSTPTBLID, Base_Step_Increased_On, Step, Step_Effective_Date, Step_FTE, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, DEX_ROW_ID FROM .UPR00400 WHERE EMPLOYID = @EMPLOYID_RS AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY EMPLOYID ASC, PAYRCORD ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, INACTIVE, PAYTYPE, BSPAYRCD, PAYRTAMT, PAYUNIT, PAYUNPER, RPTASWGS, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, SUTASTAT, FFEDTXRT, FLSTTXRT, PAYPEROD, PAYPRPRD, MXPYPPER, TipType, PAYADVNC, ACRUVACN, ACRUSTIM, WRKRCOMP, W2BXNMBR, W2BXLABL, PYADVTKN, NOTEINDX, DATAENTDFLT, SHFTCODE, PAYFACTR, BSDONRTE, PYSTPTBLID, Base_Step_Increased_On, Step, Step_Effective_Date, Step_FTE, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, DEX_ROW_ID FROM .UPR00400 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY EMPLOYID ASC, PAYRCORD ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00400F_1] TO [DYNGRP]
GO
