SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05500SS_2] (@STSDESCR char(31)) AS  set nocount on SELECT TOP 1  RETSTAT, STSDESCR, DEX_ROW_ID FROM .SVC05500 WHERE STSDESCR = @STSDESCR ORDER BY STSDESCR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05500SS_2] TO [DYNGRP]
GO
