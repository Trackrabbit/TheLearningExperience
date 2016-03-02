SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40600F_1] (@PAYRCORD_RS char(7), @PAYRCORD_RE char(7)) AS  set nocount on IF @PAYRCORD_RS IS NULL BEGIN SELECT TOP 25  PAYRCORD, DSCRIPTN, INACTIVE, PAYTYPE, BSPAYRCD, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, MXPYPPER, TipType, PAYADVNC, RPTASWGS, W2BXNMBR, W2BXLABL, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, FFEDTXRT, FLSTTXRT, ACRUVACN, ACRUSTIM, NOTEINDX, DATAENTDFLT, SHFTCODE, PAYFACTR, BSDONRTE, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, DEX_ROW_ID FROM .UPR40600 ORDER BY PAYRCORD ASC END ELSE IF @PAYRCORD_RS = @PAYRCORD_RE BEGIN SELECT TOP 25  PAYRCORD, DSCRIPTN, INACTIVE, PAYTYPE, BSPAYRCD, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, MXPYPPER, TipType, PAYADVNC, RPTASWGS, W2BXNMBR, W2BXLABL, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, FFEDTXRT, FLSTTXRT, ACRUVACN, ACRUSTIM, NOTEINDX, DATAENTDFLT, SHFTCODE, PAYFACTR, BSDONRTE, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, DEX_ROW_ID FROM .UPR40600 WHERE PAYRCORD = @PAYRCORD_RS ORDER BY PAYRCORD ASC END ELSE BEGIN SELECT TOP 25  PAYRCORD, DSCRIPTN, INACTIVE, PAYTYPE, BSPAYRCD, PAYRTAMT, PAYUNIT, PAYUNPER, PAYPEROD, PAYPRPRD, MXPYPPER, TipType, PAYADVNC, RPTASWGS, W2BXNMBR, W2BXLABL, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, FFEDTXRT, FLSTTXRT, ACRUVACN, ACRUSTIM, NOTEINDX, DATAENTDFLT, SHFTCODE, PAYFACTR, BSDONRTE, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, DEX_ROW_ID FROM .UPR40600 WHERE PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY PAYRCORD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40600F_1] TO [DYNGRP]
GO