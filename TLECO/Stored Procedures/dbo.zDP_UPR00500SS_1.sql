SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00500SS_1] (@EMPLOYID char(15), @DEDUCTON char(7)) AS  set nocount on SELECT TOP 1  EMPLOYID, DEDUCTON, INACTIVE, DEDBEGDT, DEDENDDT, VARDEDTN, DEDNFREQ, TXSHANTY, SFRFEDTX, SHFRFICA, SHFRSTTX, SFRLCLTX, BSDORCDS, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, W2BXNMBR, W2BXLABL, LTDDEDTN, NOTEINDX, NOTEINDX2, DATAENTDFLT, EARNINGSCODE, COURTDATE, COURTNAME, DOCDESCR, ORIGINALAMOUNT, AMNTTAKEN, VENDORID, FEDMAXDED, STATEMAXDED, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Deduction_Fiscal_Yr_Max, SHFRFICAMED, DEX_ROW_ID FROM .UPR00500 WHERE EMPLOYID = @EMPLOYID AND DEDUCTON = @DEDUCTON ORDER BY EMPLOYID ASC, DEDUCTON ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00500SS_1] TO [DYNGRP]
GO
