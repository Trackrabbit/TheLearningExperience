SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20012SS_1] (@Field_ID int, @Field_Alias char(81)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Field_ID, Field_Alias, Alias_Field_ID, Field_Number, Lookup_Field_Number, DEX_ROW_ID FROM .EXT20012 WHERE Field_ID = @Field_ID AND Field_Alias = @Field_Alias ORDER BY Field_ID ASC, Field_Alias ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20012SS_1] TO [DYNGRP]
GO
