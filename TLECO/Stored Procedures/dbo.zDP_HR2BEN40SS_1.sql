SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN40SS_1] (@EMPID_I char(15), @BNFBEGDT datetime, @BENEFIT char(7), @I1_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, BNFBEGDT, BENEFIT, I1_I, CHECK1_I, TIERMETHOD_I, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN40 WHERE EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I1_I = @I1_I ORDER BY EMPID_I ASC, BNFBEGDT DESC, BENEFIT ASC, I1_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN40SS_1] TO [DYNGRP]
GO
