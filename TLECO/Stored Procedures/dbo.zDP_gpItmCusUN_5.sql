SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpItmCusUN_5] (@BS int, @CUSTNMBR char(15), @DOCDATE datetime, @CUSTNMBR_RS char(15), @DOCDATE_RS datetime, @CUSTNMBR_RE char(15), @DOCDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus WHERE ( CUSTNMBR = @CUSTNMBR AND DOCDATE > @DOCDATE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus WHERE CUSTNMBR = @CUSTNMBR_RS AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( CUSTNMBR = @CUSTNMBR AND DOCDATE > @DOCDATE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( CUSTNMBR = @CUSTNMBR AND DOCDATE > @DOCDATE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpItmCusUN_5] TO [DYNGRP]
GO
