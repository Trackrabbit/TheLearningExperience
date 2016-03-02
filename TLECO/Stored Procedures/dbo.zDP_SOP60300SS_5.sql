SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60300SS_5] (@USERDEFKEY2 char(51), @ITEMNMBR char(31), @CUSTNMBR char(15)) AS  set nocount on SELECT TOP 1  ITEMNMBR, CUSTNMBR, CUSTITEMNMBR, CUSTITEMDESC, CUSTITEMSHORNAME, CUSTITEMGENERICDESC, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, USERDEFKEY1, USERDEFKEY2, USERDEFKEY3, USERDEFKEY4, NOTEINDX, DEX_ROW_ID FROM .SOP60300 WHERE USERDEFKEY2 = @USERDEFKEY2 AND ITEMNMBR = @ITEMNMBR AND CUSTNMBR = @CUSTNMBR ORDER BY USERDEFKEY2 ASC, ITEMNMBR ASC, CUSTNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60300SS_5] TO [DYNGRP]
GO