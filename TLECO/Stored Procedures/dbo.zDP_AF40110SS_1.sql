SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40110SS_1] (@USERNAME char(31)) AS  set nocount on SELECT TOP 1  USERNAME, SHGRDFLG, SHCGRFLG, SHTBARFL, SCDEFAFL, SHRWARFL, SHOFMKFL, SNPTGRFL, SHMARFLG, SHPGBDFL, SHRLRSFL, DEX_ROW_ID FROM .AF40110 WHERE USERNAME = @USERNAME ORDER BY USERNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40110SS_1] TO [DYNGRP]
GO
