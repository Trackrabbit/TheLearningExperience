SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00001SS_2] (@VENDORID char(15)) AS  set nocount on SELECT TOP 1  CUSTNMBR, VENDORID, CURNCYID, RATETPID, CREATDDT, CRUSRID, MODIFDT, DEX_ROW_ID FROM .PA00001 WHERE VENDORID = @VENDORID ORDER BY VENDORID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00001SS_2] TO [DYNGRP]
GO
