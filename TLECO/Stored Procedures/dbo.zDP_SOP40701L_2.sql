SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40701L_2] (@PRCBKID_RS char(15), @ITEMNMBR_RS char(31), @UMQTYINB_RS numeric(19,5), @QTYFROM_RS numeric(19,5), @PRCBKID_RE char(15), @ITEMNMBR_RE char(31), @UMQTYINB_RE numeric(19,5), @QTYFROM_RE numeric(19,5)) AS  set nocount on IF @PRCBKID_RS IS NULL BEGIN SELECT TOP 25  USERID, PRCBKID, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERMSGTXT, DEX_ROW_ID FROM .SOP40701 ORDER BY PRCBKID DESC, ITEMNMBR DESC, UMQTYINB DESC, QTYFROM DESC, DEX_ROW_ID DESC END ELSE IF @PRCBKID_RS = @PRCBKID_RE BEGIN SELECT TOP 25  USERID, PRCBKID, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERMSGTXT, DEX_ROW_ID FROM .SOP40701 WHERE PRCBKID = @PRCBKID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UMQTYINB BETWEEN @UMQTYINB_RS AND @UMQTYINB_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE ORDER BY PRCBKID DESC, ITEMNMBR DESC, UMQTYINB DESC, QTYFROM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, PRCBKID, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERMSGTXT, DEX_ROW_ID FROM .SOP40701 WHERE PRCBKID BETWEEN @PRCBKID_RS AND @PRCBKID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UMQTYINB BETWEEN @UMQTYINB_RS AND @UMQTYINB_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE ORDER BY PRCBKID DESC, ITEMNMBR DESC, UMQTYINB DESC, QTYFROM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40701L_2] TO [DYNGRP]
GO
