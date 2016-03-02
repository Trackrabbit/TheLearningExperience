SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_NetConnect_BatchSI] (@RowID char(101), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MSO_NetConnect_Batch (RowID) VALUES ( @RowID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_NetConnect_BatchSI] TO [DYNGRP]
GO
