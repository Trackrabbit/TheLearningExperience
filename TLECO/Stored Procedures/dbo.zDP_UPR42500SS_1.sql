SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42500SS_1] (@Batch_Prefix char(15)) AS  set nocount on SELECT TOP 1  Batch_Prefix, DSCRIPTN, DEX_ROW_ID FROM .UPR42500 WHERE Batch_Prefix = @Batch_Prefix ORDER BY Batch_Prefix ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42500SS_1] TO [DYNGRP]
GO
