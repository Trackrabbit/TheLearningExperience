SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01112SD] (@Extender_Record_ID int, @LNITMSEQ int, @Field_ID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT01112 WHERE Extender_Record_ID = @Extender_Record_ID AND LNITMSEQ = @LNITMSEQ AND Field_ID = @Field_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT01112 WHERE Extender_Record_ID = @Extender_Record_ID AND LNITMSEQ = @LNITMSEQ AND Field_ID = @Field_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01112SD] TO [DYNGRP]
GO
