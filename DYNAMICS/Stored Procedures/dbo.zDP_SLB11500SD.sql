SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11500SD] (@SmartList_ID char(15), @Table_Number smallint, @Field_Number smallint, @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .SLB11500 WHERE SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND Field_Number = @Field_Number AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SLB11500 WHERE SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND Field_Number = @Field_Number AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11500SD] TO [DYNGRP]
GO
