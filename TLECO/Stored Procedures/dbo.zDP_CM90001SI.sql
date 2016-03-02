SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90001SI] (@CHEKBKID char(15), @EFTGenerationTimestamp char(31), @USERID char(15), @TotalDebitAmount numeric(19,5), @TotCrdAmt numeric(19,5), @TotalNumberofDebits int, @TotalNumberofCredits int, @FILENAME char(45), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM90001 (CHEKBKID, EFTGenerationTimestamp, USERID, TotalDebitAmount, TotCrdAmt, TotalNumberofDebits, TotalNumberofCredits, FILENAME) VALUES ( @CHEKBKID, @EFTGenerationTimestamp, @USERID, @TotalDebitAmount, @TotCrdAmt, @TotalNumberofDebits, @TotalNumberofCredits, @FILENAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90001SI] TO [DYNGRP]
GO
