SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_NetConnect_BatchSS_1] (@RowID char(101)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  RowID, DEX_ROW_ID FROM .MSO_NetConnect_Batch WHERE RowID = @RowID ORDER BY RowID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_NetConnect_BatchSS_1] TO [DYNGRP]
GO
