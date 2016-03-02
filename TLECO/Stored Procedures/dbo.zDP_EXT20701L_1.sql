SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20701L_1] (@Extender_Import_ID_RS char(15), @Field_ID_RS int, @Extender_Import_ID_RE char(15), @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Import_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Import_ID, Field_ID, Field_Number, Start_Position, End_Position, DEX_ROW_ID FROM .EXT20701 ORDER BY Extender_Import_ID DESC, Field_ID DESC END ELSE IF @Extender_Import_ID_RS = @Extender_Import_ID_RE BEGIN SELECT TOP 25  Extender_Import_ID, Field_ID, Field_Number, Start_Position, End_Position, DEX_ROW_ID FROM .EXT20701 WHERE Extender_Import_ID = @Extender_Import_ID_RS AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Import_ID DESC, Field_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Import_ID, Field_ID, Field_Number, Start_Position, End_Position, DEX_ROW_ID FROM .EXT20701 WHERE Extender_Import_ID BETWEEN @Extender_Import_ID_RS AND @Extender_Import_ID_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Import_ID DESC, Field_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20701L_1] TO [DYNGRP]
GO
