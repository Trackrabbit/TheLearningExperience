SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN21SI] (@BENEFIT char(7), @BNFTMTHD smallint, @BNFPRCNT_1 numeric(19,5), @BNFPRCNT_2 numeric(19,5), @BNFPRCNT_3 numeric(19,5), @BNFPRCNT_4 numeric(19,5), @BNFPRCNT_5 numeric(19,5), @BNFITAMT_1 numeric(19,5), @BNFITAMT_2 numeric(19,5), @BNFITAMT_3 numeric(19,5), @BNFITAMT_4 numeric(19,5), @BNFITAMT_5 numeric(19,5), @BNFTRMAX_1 numeric(19,5), @BNFTRMAX_2 numeric(19,5), @BNFTRMAX_3 numeric(19,5), @BNFTRMAX_4 numeric(19,5), @BNFTRMAX_5 numeric(19,5), @BNTRMXUN_1 int, @BNTRMXUN_2 int, @BNTRMXUN_3 int, @BNTRMXUN_4 int, @BNTRMXUN_5 int, @DEDUCTON char(7), @DEDNMTHD smallint, @DEDNPRCT_1 numeric(19,5), @DEDNPRCT_2 numeric(19,5), @DEDNPRCT_3 numeric(19,5), @DEDNPRCT_4 numeric(19,5), @DEDNPRCT_5 numeric(19,5), @DEDCAMNT_1 numeric(19,5), @DEDCAMNT_2 numeric(19,5), @DEDCAMNT_3 numeric(19,5), @DEDCAMNT_4 numeric(19,5), @DEDCAMNT_5 numeric(19,5), @DEDTRMAX_1 numeric(19,5), @DEDTRMAX_2 numeric(19,5), @DEDTRMAX_3 numeric(19,5), @DEDTRMAX_4 numeric(19,5), @DEDTRMAX_5 numeric(19,5), @DETRMXUN_1 int, @DETRMXUN_2 int, @DETRMXUN_3 int, @DETRMXUN_4 int, @DETRMXUN_5 int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2BEN21 (BENEFIT, BNFTMTHD, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, DEDUCTON, DEDNMTHD, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, DEDTRMAX_1, DEDTRMAX_2, DEDTRMAX_3, DEDTRMAX_4, DEDTRMAX_5, DETRMXUN_1, DETRMXUN_2, DETRMXUN_3, DETRMXUN_4, DETRMXUN_5) VALUES ( @BENEFIT, @BNFTMTHD, @BNFPRCNT_1, @BNFPRCNT_2, @BNFPRCNT_3, @BNFPRCNT_4, @BNFPRCNT_5, @BNFITAMT_1, @BNFITAMT_2, @BNFITAMT_3, @BNFITAMT_4, @BNFITAMT_5, @BNFTRMAX_1, @BNFTRMAX_2, @BNFTRMAX_3, @BNFTRMAX_4, @BNFTRMAX_5, @BNTRMXUN_1, @BNTRMXUN_2, @BNTRMXUN_3, @BNTRMXUN_4, @BNTRMXUN_5, @DEDUCTON, @DEDNMTHD, @DEDNPRCT_1, @DEDNPRCT_2, @DEDNPRCT_3, @DEDNPRCT_4, @DEDNPRCT_5, @DEDCAMNT_1, @DEDCAMNT_2, @DEDCAMNT_3, @DEDCAMNT_4, @DEDCAMNT_5, @DEDTRMAX_1, @DEDTRMAX_2, @DEDTRMAX_3, @DEDTRMAX_4, @DEDTRMAX_5, @DETRMXUN_1, @DETRMXUN_2, @DETRMXUN_3, @DETRMXUN_4, @DETRMXUN_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN21SI] TO [DYNGRP]
GO
