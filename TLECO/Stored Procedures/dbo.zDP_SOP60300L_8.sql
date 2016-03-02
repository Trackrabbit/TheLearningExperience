SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60300L_8] (@CUSTNMBR_RS char(15), @ITEMNMBR_RS char(31), @CUSTNMBR_RE char(15), @ITEMNMBR_RE char(31)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 ORDER BY CUSTNMBR DESC, ITEMNMBR DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE CUSTNMBR = @CUSTNMBR_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY CUSTNMBR DESC, ITEMNMBR DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY CUSTNMBR DESC, ITEMNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60300L_8] TO [DYNGRP]
GO
