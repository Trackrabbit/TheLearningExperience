SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90001F_1] (@CHEKBKID_RS char(15), @EFTGenerationTimestamp_RS char(31), @CHEKBKID_RE char(15), @EFTGenerationTimestamp_RE char(31)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CHEKBKID, EFTGenerationTimestamp, USERID, TotalDebitAmount, TotCrdAmt, TotalNumberofDebits, TotalNumberofCredits, FILENAME, DEX_ROW_ID FROM .CM90001 ORDER BY CHEKBKID ASC, EFTGenerationTimestamp ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CHEKBKID, EFTGenerationTimestamp, USERID, TotalDebitAmount, TotCrdAmt, TotalNumberofDebits, TotalNumberofCredits, FILENAME, DEX_ROW_ID FROM .CM90001 WHERE CHEKBKID = @CHEKBKID_RS AND EFTGenerationTimestamp BETWEEN @EFTGenerationTimestamp_RS AND @EFTGenerationTimestamp_RE ORDER BY CHEKBKID ASC, EFTGenerationTimestamp ASC END ELSE BEGIN SELECT TOP 25  CHEKBKID, EFTGenerationTimestamp, USERID, TotalDebitAmount, TotCrdAmt, TotalNumberofDebits, TotalNumberofCredits, FILENAME, DEX_ROW_ID FROM .CM90001 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND EFTGenerationTimestamp BETWEEN @EFTGenerationTimestamp_RS AND @EFTGenerationTimestamp_RE ORDER BY CHEKBKID ASC, EFTGenerationTimestamp ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90001F_1] TO [DYNGRP]
GO
