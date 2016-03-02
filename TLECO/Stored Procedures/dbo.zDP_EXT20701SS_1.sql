SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20701SS_1] (@Extender_Import_ID char(15), @Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Import_ID, Field_ID, Field_Number, Start_Position, End_Position, DEX_ROW_ID FROM .EXT20701 WHERE Extender_Import_ID = @Extender_Import_ID AND Field_ID = @Field_ID ORDER BY Extender_Import_ID ASC, Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20701SS_1] TO [DYNGRP]
GO
