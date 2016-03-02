SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90450SD] (@Data_Connection_ID char(15), @LNITMSEQ int, @Value_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .ERB90450 WHERE Data_Connection_ID = @Data_Connection_ID AND LNITMSEQ = @LNITMSEQ AND Value_Number = @Value_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ERB90450 WHERE Data_Connection_ID = @Data_Connection_ID AND LNITMSEQ = @LNITMSEQ AND Value_Number = @Value_Number SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90450SD] TO [DYNGRP]
GO
