SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42505SS_2] (@EMPLOYID char(15), @Batch_Prefix char(15)) AS  set nocount on SELECT TOP 1  Batch_Prefix, EMPLOYID, DEX_ROW_ID FROM .UPR42505 WHERE EMPLOYID = @EMPLOYID AND Batch_Prefix = @Batch_Prefix ORDER BY EMPLOYID ASC, Batch_Prefix ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42505SS_2] TO [DYNGRP]
GO
