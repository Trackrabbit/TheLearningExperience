SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN22F_2] (@BENEFIT_RS char(7), @EMPID_I_RS char(15), @BENEFIT_RE char(7), @EMPID_I_RE char(15)) AS  set nocount on IF @BENEFIT_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BENEFIT, TIERMETHOD_I, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN22 ORDER BY BENEFIT ASC, EMPID_I ASC END ELSE IF @BENEFIT_RS = @BENEFIT_RE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, TIERMETHOD_I, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN22 WHERE BENEFIT = @BENEFIT_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY BENEFIT ASC, EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, TIERMETHOD_I, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, DEX_ROW_ID FROM .HR2BEN22 WHERE BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY BENEFIT ASC, EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN22F_2] TO [DYNGRP]
GO
