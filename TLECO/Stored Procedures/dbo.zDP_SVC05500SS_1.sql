SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05500SS_1] (@RETSTAT char(3)) AS  set nocount on SELECT TOP 1  RETSTAT, STSDESCR, DEX_ROW_ID FROM .SVC05500 WHERE RETSTAT = @RETSTAT ORDER BY RETSTAT ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05500SS_1] TO [DYNGRP]
GO