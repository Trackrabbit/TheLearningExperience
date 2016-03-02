SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40802F_1] (@PLANCODE_RS char(15), @JOBTITLE_RS char(7), @SEAT_RS int, @SEQNUMBR_RS int, @BENEFIT_RS char(7), @PLANCODE_RE char(15), @JOBTITLE_RE char(7), @SEAT_RE int, @SEQNUMBR_RE int, @BENEFIT_RE char(7)) AS  set nocount on IF @PLANCODE_RS IS NULL BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, BENEFIT, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, BNFBEGDT, BENEFITCB, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDFRMLA, BENEFITSTATUS_I, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, CHILDREN_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, EARNINGSCODE, PREMMETHOD_I, LIFEAMTCHILDREN_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, SMOKER_I, SMOKERSP_I, TIERSUSED_I, DEX_ROW_ID FROM .PC40802 ORDER BY PLANCODE ASC, JOBTITLE ASC, SEAT ASC, SEQNUMBR ASC, BENEFIT ASC END ELSE IF @PLANCODE_RS = @PLANCODE_RE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, BENEFIT, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, BNFBEGDT, BENEFITCB, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDFRMLA, BENEFITSTATUS_I, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, CHILDREN_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, EARNINGSCODE, PREMMETHOD_I, LIFEAMTCHILDREN_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, SMOKER_I, SMOKERSP_I, TIERSUSED_I, DEX_ROW_ID FROM .PC40802 WHERE PLANCODE = @PLANCODE_RS AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY PLANCODE ASC, JOBTITLE ASC, SEAT ASC, SEQNUMBR ASC, BENEFIT ASC END ELSE BEGIN SELECT TOP 25  PLANCODE, JOBTITLE, SEAT, SEQNUMBR, BENEFIT, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, BNFBEGDT, BENEFITCB, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDFRMLA, BENEFITSTATUS_I, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5, CHILDREN_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, EARNINGSCODE, PREMMETHOD_I, LIFEAMTCHILDREN_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, SMOKER_I, SMOKERSP_I, TIERSUSED_I, DEX_ROW_ID FROM .PC40802 WHERE PLANCODE BETWEEN @PLANCODE_RS AND @PLANCODE_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND SEAT BETWEEN @SEAT_RS AND @SEAT_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY PLANCODE ASC, JOBTITLE ASC, SEAT ASC, SEQNUMBR ASC, BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40802F_1] TO [DYNGRP]
GO
