SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01104F_1] (@Extender_Record_ID_RS int, @Field_ID_RS int, @Extender_Record_ID_RE int, @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Record_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Record_ID, Field_ID, TIME1, DEX_ROW_ID FROM .EXT01104 ORDER BY Extender_Record_ID ASC, Field_ID ASC END ELSE IF @Extender_Record_ID_RS = @Extender_Record_ID_RE BEGIN SELECT TOP 25  Extender_Record_ID, Field_ID, TIME1, DEX_ROW_ID FROM .EXT01104 WHERE Extender_Record_ID = @Extender_Record_ID_RS AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Record_ID ASC, Field_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Record_ID, Field_ID, TIME1, DEX_ROW_ID FROM .EXT01104 WHERE Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Record_ID ASC, Field_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01104F_1] TO [DYNGRP]
GO
