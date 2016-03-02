SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN21N_1] (@BS int, @BENEFIT char(7), @BENEFIT_RS char(7), @BENEFIT_RE char(7)) AS  set nocount on IF @BENEFIT_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDUCTON, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN21 WHERE ( BENEFIT > @BENEFIT ) ORDER BY BENEFIT ASC END ELSE IF @BENEFIT_RS = @BENEFIT_RE BEGIN SELECT TOP 25  BENEFIT, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDUCTON, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN21 WHERE BENEFIT = @BENEFIT_RS AND ( BENEFIT > @BENEFIT ) ORDER BY BENEFIT ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDUCTON, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN21 WHERE BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( BENEFIT > @BENEFIT ) ORDER BY BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN21N_1] TO [DYNGRP]
GO
