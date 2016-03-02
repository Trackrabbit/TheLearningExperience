SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40701L_1] (@USERID_RS char(15), @PRCBKID_RS char(15), @ITEMNMBR_RS char(31), @UOFM_RS char(9), @QTYFROM_RS numeric(19,5), @USERID_RE char(15), @PRCBKID_RE char(15), @ITEMNMBR_RE char(31), @UOFM_RE char(9), @QTYFROM_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, PRCBKID, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERMSGTXT, DEX_ROW_ID FROM .SOP40701 ORDER BY USERID DESC, PRCBKID DESC, ITEMNMBR DESC, UOFM DESC, QTYFROM DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, PRCBKID, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERMSGTXT, DEX_ROW_ID FROM .SOP40701 WHERE USERID = @USERID_RS AND PRCBKID BETWEEN @PRCBKID_RS AND @PRCBKID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE ORDER BY USERID DESC, PRCBKID DESC, ITEMNMBR DESC, UOFM DESC, QTYFROM DESC END ELSE BEGIN SELECT TOP 25  USERID, PRCBKID, ITEMNMBR, ITEMDESC, DECPLCUR, DECPLQTY, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERMSGTXT, DEX_ROW_ID FROM .SOP40701 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCBKID BETWEEN @PRCBKID_RS AND @PRCBKID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE ORDER BY USERID DESC, PRCBKID DESC, ITEMNMBR DESC, UOFM DESC, QTYFROM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40701L_1] TO [DYNGRP]
GO
