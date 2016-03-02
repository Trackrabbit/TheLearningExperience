SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123504SS_1] (@CHEKBKID char(15), @TRXDATE datetime, @CMTrxNum char(21), @CMTrxType smallint) AS  set nocount on SELECT TOP 1  MEUPLDID, PP_Number, MEUPDT, MEUPTIM, CHEKBKID, TRXDATE, CMTrxNum, CMTrxType, TRXAMNT, paidtorcvdfrom, USERID, USERDATE, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME123504 WHERE CHEKBKID = @CHEKBKID AND TRXDATE = @TRXDATE AND CMTrxNum = @CMTrxNum AND CMTrxType = @CMTrxType ORDER BY CHEKBKID ASC, TRXDATE ASC, CMTrxNum ASC, CMTrxType ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123504SS_1] TO [DYNGRP]
GO