SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40201SS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, AUTOASGNEMPID, NEXTEMPID, DEX_ROW_ID FROM .UPR40201 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40201SS_1] TO [DYNGRP]
GO