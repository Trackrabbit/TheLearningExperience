SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC40101SS_2] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC40101SS_2] TO [DYNGRP]
GO
