SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60300F_3] (@CUSTITEMDESC_RS char(51), @ITEMNMBR_RS char(31), @CUSTNMBR_RS char(15), @CUSTITEMDESC_RE char(51), @ITEMNMBR_RE char(31), @CUSTNMBR_RE char(15)) AS  set nocount on IF @CUSTITEMDESC_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 ORDER BY CUSTITEMDESC ASC, ITEMNMBR ASC, CUSTNMBR ASC END ELSE IF @CUSTITEMDESC_RS = @CUSTITEMDESC_RE BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE CUSTITEMDESC = @CUSTITEMDESC_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTITEMDESC ASC, ITEMNMBR ASC, CUSTNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE CUSTITEMDESC BETWEEN @CUSTITEMDESC_RS AND @CUSTITEMDESC_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTITEMDESC ASC, ITEMNMBR ASC, CUSTNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60300F_3] TO [DYNGRP]
GO
