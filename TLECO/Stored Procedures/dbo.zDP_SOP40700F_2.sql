SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40700F_2] (@USERID_RS char(15), @CUSTNMBR_RS char(15), @ITEMNMBR_RS char(31), @UMQTYINB_RS numeric(19,5), @QTYFROM_RS numeric(19,5), @USERID_RE char(15), @CUSTNMBR_RE char(15), @ITEMNMBR_RE char(31), @UMQTYINB_RE numeric(19,5), @QTYFROM_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CUSTNMBR, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ORUNTPRC, ERMSGTXT, DEX_ROW_ID FROM .SOP40700 ORDER BY USERID ASC, CUSTNMBR ASC, ITEMNMBR ASC, UMQTYINB ASC, QTYFROM ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CUSTNMBR, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ORUNTPRC, ERMSGTXT, DEX_ROW_ID FROM .SOP40700 WHERE USERID = @USERID_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UMQTYINB BETWEEN @UMQTYINB_RS AND @UMQTYINB_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE ORDER BY USERID ASC, CUSTNMBR ASC, ITEMNMBR ASC, UMQTYINB ASC, QTYFROM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, CUSTNMBR, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ORUNTPRC, ERMSGTXT, DEX_ROW_ID FROM .SOP40700 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UMQTYINB BETWEEN @UMQTYINB_RS AND @UMQTYINB_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE ORDER BY USERID ASC, CUSTNMBR ASC, ITEMNMBR ASC, UMQTYINB ASC, QTYFROM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40700F_2] TO [DYNGRP]
GO
