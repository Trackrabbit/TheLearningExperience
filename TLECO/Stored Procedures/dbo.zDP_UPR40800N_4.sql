SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40800N_4] (@BS int, @VARBENFT tinyint, @BENEFIT char(7), @VARBENFT_RS tinyint, @BENEFIT_RS char(7), @VARBENFT_RE tinyint, @BENEFIT_RE char(7)) AS  set nocount on IF @VARBENFT_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, DSCRIPTN, INACTIVE, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, FFEDTXRT, FLSTTXRT, BORCDTYP, BSDORCDS, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, BNPAYPMX, BNFYRMAX, BNFLFMAX, W2BXNMBR, W2BXLABL, NOTEINDX, DATAENTDFLT, EMPLRMAXMAT, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Benefit_Fiscal_Max, DEX_ROW_ID FROM .UPR40800 WHERE ( VARBENFT = @VARBENFT AND BENEFIT > @BENEFIT OR VARBENFT > @VARBENFT ) ORDER BY VARBENFT ASC, BENEFIT ASC END ELSE IF @VARBENFT_RS = @VARBENFT_RE BEGIN SELECT TOP 25  BENEFIT, DSCRIPTN, INACTIVE, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, FFEDTXRT, FLSTTXRT, BORCDTYP, BSDORCDS, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, BNPAYPMX, BNFYRMAX, BNFLFMAX, W2BXNMBR, W2BXLABL, NOTEINDX, DATAENTDFLT, EMPLRMAXMAT, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Benefit_Fiscal_Max, DEX_ROW_ID FROM .UPR40800 WHERE VARBENFT = @VARBENFT_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( VARBENFT = @VARBENFT AND BENEFIT > @BENEFIT OR VARBENFT > @VARBENFT ) ORDER BY VARBENFT ASC, BENEFIT ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, DSCRIPTN, INACTIVE, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, TAXABLE, SBJTFDTX, SBJTSSEC, SBJTMCAR, SBJTSTTX, SBJTLTAX, SBJTFUTA, SBJTSUTA, FFEDTXRT, FLSTTXRT, BORCDTYP, BSDORCDS, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, BNFITAMT_1, BNFITAMT_2, BNFITAMT_3, BNFITAMT_4, BNFITAMT_5, BNFTRMAX_1, BNFTRMAX_2, BNFTRMAX_3, BNFTRMAX_4, BNFTRMAX_5, BNTRMXUN_1, BNTRMXUN_2, BNTRMXUN_3, BNTRMXUN_4, BNTRMXUN_5, BNPAYPMX, BNFYRMAX, BNFLFMAX, W2BXNMBR, W2BXLABL, NOTEINDX, DATAENTDFLT, EMPLRMAXMAT, W2BXNMBR2, W2BXLABL2, W2BXNMBR3, W2BXLABL3, W2BXNMBR4, W2BXLABL4, Benefit_Fiscal_Max, DEX_ROW_ID FROM .UPR40800 WHERE VARBENFT BETWEEN @VARBENFT_RS AND @VARBENFT_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( VARBENFT = @VARBENFT AND BENEFIT > @BENEFIT OR VARBENFT > @VARBENFT ) ORDER BY VARBENFT ASC, BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40800N_4] TO [DYNGRP]
GO
