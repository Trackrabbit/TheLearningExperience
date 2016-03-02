SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900514SS_1] (@USERID char(15), @BSSI_ImportID char(15), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  USERID, BSSI_ImportID, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, ERRDESCR, DEX_ROW_ID FROM .B2900514 WHERE USERID = @USERID AND BSSI_ImportID = @BSSI_ImportID AND LNITMSEQ = @LNITMSEQ ORDER BY USERID ASC, BSSI_ImportID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900514SS_1] TO [DYNGRP]
GO
