SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpItmCusL_1] (@CUSTNMBR_RS char(15), @ITEMNMBR_RS char(31), @UOFM_RS char(9), @CUSTNMBR_RE char(15), @ITEMNMBR_RE char(31), @UOFM_RE char(9)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus ORDER BY CUSTNMBR DESC, ITEMNMBR DESC, UOFM DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus WHERE CUSTNMBR = @CUSTNMBR_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE ORDER BY CUSTNMBR DESC, ITEMNMBR DESC, UOFM DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE ORDER BY CUSTNMBR DESC, ITEMNMBR DESC, UOFM DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpItmCusL_1] TO [DYNGRP]
GO
