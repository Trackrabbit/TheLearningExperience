SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40500SS_1] (@MSTRNUMB int) AS  set nocount on SELECT TOP 1  MSTRNUMB, DEX_ROW_ID FROM .SOP40500 WHERE MSTRNUMB = @MSTRNUMB ORDER BY MSTRNUMB ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40500SS_1] TO [DYNGRP]
GO
