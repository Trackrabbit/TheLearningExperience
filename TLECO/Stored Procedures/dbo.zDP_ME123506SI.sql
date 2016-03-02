SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123506SI] (@CHEKBKID char(15), @CMTrxNum char(21), @paidtorcvdfrom char(65), @CMTrxType smallint, @TRXAMNT numeric(19,5), @VOIDDATE datetime, @ME_Dummy_File_Convert_De tinyint, @CNTRLNUM char(21), @MEVDTXTP smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123506 (CHEKBKID, CMTrxNum, paidtorcvdfrom, CMTrxType, TRXAMNT, VOIDDATE, ME_Dummy_File_Convert_De, CNTRLNUM, MEVDTXTP) VALUES ( @CHEKBKID, @CMTrxNum, @paidtorcvdfrom, @CMTrxType, @TRXAMNT, @VOIDDATE, @ME_Dummy_File_Convert_De, @CNTRLNUM, @MEVDTXTP) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123506SI] TO [DYNGRP]
GO
