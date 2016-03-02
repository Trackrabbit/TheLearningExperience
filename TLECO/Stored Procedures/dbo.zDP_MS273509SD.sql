SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273509SD] (@MSO_ProgID_Prefix char(21), @MSO_CardType char(1), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MS273509 WHERE MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_CardType = @MSO_CardType AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MS273509 WHERE MSO_ProgID_Prefix = @MSO_ProgID_Prefix AND MSO_CardType = @MSO_CardType SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273509SD] TO [DYNGRP]
GO
