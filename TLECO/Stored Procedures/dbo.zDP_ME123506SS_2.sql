SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123506SS_2] (@CHEKBKID char(15), @VOIDDATE datetime, @CMTrxNum char(21)) AS  set nocount on SELECT TOP 1  CHEKBKID, CMTrxNum, paidtorcvdfrom, CMTrxType, TRXAMNT, VOIDDATE, ME_Dummy_File_Convert_De, CNTRLNUM, MEVDTXTP, DEX_ROW_ID FROM .ME123506 WHERE CHEKBKID = @CHEKBKID AND VOIDDATE = @VOIDDATE AND CMTrxNum = @CMTrxNum ORDER BY CHEKBKID ASC, VOIDDATE ASC, CMTrxNum ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123506SS_2] TO [DYNGRP]
GO