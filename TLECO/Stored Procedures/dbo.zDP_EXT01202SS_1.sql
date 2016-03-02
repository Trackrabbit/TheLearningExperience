SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01202SS_1] (@Extender_Record_ID int, @Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Record_ID, Field_ID, DATE1, DEX_ROW_ID FROM .EXT01202 WHERE Extender_Record_ID = @Extender_Record_ID AND Field_ID = @Field_ID ORDER BY Extender_Record_ID ASC, Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01202SS_1] TO [DYNGRP]
GO
