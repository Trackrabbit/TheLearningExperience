SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60300L_7] (@USERDEFKEY4_RS char(51), @ITEMNMBR_RS char(31), @CUSTNMBR_RS char(15), @USERDEFKEY4_RE char(51), @ITEMNMBR_RE char(31), @CUSTNMBR_RE char(15)) AS  set nocount on IF @USERDEFKEY4_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 ORDER BY USERDEFKEY4 DESC, ITEMNMBR DESC, CUSTNMBR DESC END ELSE IF @USERDEFKEY4_RS = @USERDEFKEY4_RE BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE USERDEFKEY4 = @USERDEFKEY4_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY USERDEFKEY4 DESC, ITEMNMBR DESC, CUSTNMBR DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE USERDEFKEY4 BETWEEN @USERDEFKEY4_RS AND @USERDEFKEY4_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY USERDEFKEY4 DESC, ITEMNMBR DESC, CUSTNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60300L_7] TO [DYNGRP]
GO
