SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900514L_1] (@USERID_RS char(15), @BSSI_ImportID_RS char(15), @LNITMSEQ_RS int, @USERID_RE char(15), @BSSI_ImportID_RE char(15), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, BSSI_ImportID, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, ERRDESCR, DEX_ROW_ID FROM .B2900514 ORDER BY USERID DESC, BSSI_ImportID DESC, LNITMSEQ DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, BSSI_ImportID, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, ERRDESCR, DEX_ROW_ID FROM .B2900514 WHERE USERID = @USERID_RS AND BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY USERID DESC, BSSI_ImportID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  USERID, BSSI_ImportID, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, ERRDESCR, DEX_ROW_ID FROM .B2900514 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY USERID DESC, BSSI_ImportID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900514L_1] TO [DYNGRP]
GO
