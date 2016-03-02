SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20231SD] (@Extender_Navigation_List int, @Navigation_Field_Type smallint, @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT20231 WHERE Extender_Navigation_List = @Extender_Navigation_List AND Navigation_Field_Type = @Navigation_Field_Type AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT20231 WHERE Extender_Navigation_List = @Extender_Navigation_List AND Navigation_Field_Type = @Navigation_Field_Type AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20231SD] TO [DYNGRP]
GO
