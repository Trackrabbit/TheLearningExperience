SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123504SI] (@MEUPLDID char(21), @PP_Number char(21), @MEUPDT datetime, @MEUPTIM datetime, @CHEKBKID char(15), @TRXDATE datetime, @CMTrxNum char(21), @CMTrxType smallint, @TRXAMNT numeric(19,5), @paidtorcvdfrom char(65), @USERID char(15), @USERDATE datetime, @ME_Dummy_File_Convert_De tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123504 (MEUPLDID, PP_Number, MEUPDT, MEUPTIM, CHEKBKID, TRXDATE, CMTrxNum, CMTrxType, TRXAMNT, paidtorcvdfrom, USERID, USERDATE, ME_Dummy_File_Convert_De) VALUES ( @MEUPLDID, @PP_Number, @MEUPDT, @MEUPTIM, @CHEKBKID, @TRXDATE, @CMTrxNum, @CMTrxType, @TRXAMNT, @paidtorcvdfrom, @USERID, @USERDATE, @ME_Dummy_File_Convert_De) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123504SI] TO [DYNGRP]
GO
