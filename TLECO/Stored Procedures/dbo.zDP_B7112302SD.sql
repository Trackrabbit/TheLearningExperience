SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112302SD] (@BSSI_Recognition_SNumber char(25), @LNITMSEQ int, @BSSI_Line_Item_Sequence int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7112302 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7112302 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112302SD] TO [DYNGRP]
GO
