SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123504F_2] (@MEUPLDID_RS char(21), @CHEKBKID_RS char(15), @TRXDATE_RS datetime, @CMTrxNum_RS char(21), @MEUPLDID_RE char(21), @CHEKBKID_RE char(15), @TRXDATE_RE datetime, @CMTrxNum_RE char(21)) AS  set nocount on IF @MEUPLDID_RS IS NULL BEGIN SELECT TOP 25  MEUPLDID, PP_Number, MEUPDT, MEUPTIM, CHEKBKID, TRXDATE, CMTrxNum, CMTrxType, TRXAMNT, paidtorcvdfrom, USERID, USERDATE, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME123504 ORDER BY MEUPLDID ASC, CHEKBKID ASC, TRXDATE ASC, CMTrxNum ASC, DEX_ROW_ID ASC END ELSE IF @MEUPLDID_RS = @MEUPLDID_RE BEGIN SELECT TOP 25  MEUPLDID, PP_Number, MEUPDT, MEUPTIM, CHEKBKID, TRXDATE, CMTrxNum, CMTrxType, TRXAMNT, paidtorcvdfrom, USERID, USERDATE, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME123504 WHERE MEUPLDID = @MEUPLDID_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND CMTrxNum BETWEEN @CMTrxNum_RS AND @CMTrxNum_RE ORDER BY MEUPLDID ASC, CHEKBKID ASC, TRXDATE ASC, CMTrxNum ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MEUPLDID, PP_Number, MEUPDT, MEUPTIM, CHEKBKID, TRXDATE, CMTrxNum, CMTrxType, TRXAMNT, paidtorcvdfrom, USERID, USERDATE, ME_Dummy_File_Convert_De, DEX_ROW_ID FROM .ME123504 WHERE MEUPLDID BETWEEN @MEUPLDID_RS AND @MEUPLDID_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND CMTrxNum BETWEEN @CMTrxNum_RS AND @CMTrxNum_RE ORDER BY MEUPLDID ASC, CHEKBKID ASC, TRXDATE ASC, CMTrxNum ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123504F_2] TO [DYNGRP]
GO
