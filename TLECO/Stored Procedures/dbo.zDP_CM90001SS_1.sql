SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90001SS_1] (@CHEKBKID char(15), @EFTGenerationTimestamp char(31)) AS  set nocount on SELECT TOP 1  CHEKBKID, EFTGenerationTimestamp, USERID, TotalDebitAmount, TotCrdAmt, TotalNumberofDebits, TotalNumberofCredits, FILENAME, DEX_ROW_ID FROM .CM90001 WHERE CHEKBKID = @CHEKBKID AND EFTGenerationTimestamp = @EFTGenerationTimestamp ORDER BY CHEKBKID ASC, EFTGenerationTimestamp ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90001SS_1] TO [DYNGRP]
GO
