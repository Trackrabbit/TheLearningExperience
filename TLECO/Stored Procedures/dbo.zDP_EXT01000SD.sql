SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01000SD] (@Extender_Type smallint, @Extender_Form_ID char(15), @UD_Field_ID char(151), @UD_Form_Field_ID_2 char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT01000 WHERE Extender_Type = @Extender_Type AND Extender_Form_ID = @Extender_Form_ID AND UD_Field_ID = @UD_Field_ID AND UD_Form_Field_ID_2 = @UD_Form_Field_ID_2 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT01000 WHERE Extender_Type = @Extender_Type AND Extender_Form_ID = @Extender_Form_ID AND UD_Field_ID = @UD_Field_ID AND UD_Form_Field_ID_2 = @UD_Form_Field_ID_2 SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01000SD] TO [DYNGRP]
GO
