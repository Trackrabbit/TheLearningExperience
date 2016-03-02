SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA40202SS_1] (@BOOKCLASSINDX int) AS  set nocount on SELECT TOP 1  BOOKCLASSINDX, BOOKID, ASSETCLASSID, EFFECTDATEBEGIN, EFFECTDATEEND, DEPRECIATIONMETHOD, AVERAGINGCONV, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, SWITCHOVER, SALVAGEEST, SALVAGEPCT, TEFRAFLAG, LUXAUTOIND, Initial_Allowance_Perc, SPECDEPRALLOW, SPECDEPRALLOWPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA40202 WHERE BOOKCLASSINDX = @BOOKCLASSINDX ORDER BY BOOKCLASSINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA40202SS_1] TO [DYNGRP]
GO