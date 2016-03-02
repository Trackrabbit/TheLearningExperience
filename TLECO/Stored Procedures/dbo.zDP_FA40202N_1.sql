SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA40202N_1] (@BS int, @BOOKCLASSINDX int, @BOOKCLASSINDX_RS int, @BOOKCLASSINDX_RE int) AS  set nocount on IF @BOOKCLASSINDX_RS IS NULL BEGIN SELECT TOP 25  BOOKCLASSINDX, BOOKID, ASSETCLASSID, EFFECTDATEBEGIN, EFFECTDATEEND, DEPRECIATIONMETHOD, AVERAGINGCONV, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, SWITCHOVER, SALVAGEEST, SALVAGEPCT, TEFRAFLAG, LUXAUTOIND, Initial_Allowance_Perc, SPECDEPRALLOW, SPECDEPRALLOWPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA40202 WHERE ( BOOKCLASSINDX > @BOOKCLASSINDX ) ORDER BY BOOKCLASSINDX ASC END ELSE IF @BOOKCLASSINDX_RS = @BOOKCLASSINDX_RE BEGIN SELECT TOP 25  BOOKCLASSINDX, BOOKID, ASSETCLASSID, EFFECTDATEBEGIN, EFFECTDATEEND, DEPRECIATIONMETHOD, AVERAGINGCONV, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, SWITCHOVER, SALVAGEEST, SALVAGEPCT, TEFRAFLAG, LUXAUTOIND, Initial_Allowance_Perc, SPECDEPRALLOW, SPECDEPRALLOWPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA40202 WHERE BOOKCLASSINDX = @BOOKCLASSINDX_RS AND ( BOOKCLASSINDX > @BOOKCLASSINDX ) ORDER BY BOOKCLASSINDX ASC END ELSE BEGIN SELECT TOP 25  BOOKCLASSINDX, BOOKID, ASSETCLASSID, EFFECTDATEBEGIN, EFFECTDATEEND, DEPRECIATIONMETHOD, AVERAGINGCONV, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, SWITCHOVER, SALVAGEEST, SALVAGEPCT, TEFRAFLAG, LUXAUTOIND, Initial_Allowance_Perc, SPECDEPRALLOW, SPECDEPRALLOWPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA40202 WHERE BOOKCLASSINDX BETWEEN @BOOKCLASSINDX_RS AND @BOOKCLASSINDX_RE AND ( BOOKCLASSINDX > @BOOKCLASSINDX ) ORDER BY BOOKCLASSINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA40202N_1] TO [DYNGRP]
GO
