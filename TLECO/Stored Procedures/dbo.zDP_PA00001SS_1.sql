SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00001SS_1] (@CUSTNMBR char(15)) AS  set nocount on SELECT TOP 1  CUSTNMBR, VENDORID, CURNCYID, RATETPID, CREATDDT, CRUSRID, MODIFDT, DEX_ROW_ID FROM .PA00001 WHERE CUSTNMBR = @CUSTNMBR ORDER BY CUSTNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00001SS_1] TO [DYNGRP]
GO