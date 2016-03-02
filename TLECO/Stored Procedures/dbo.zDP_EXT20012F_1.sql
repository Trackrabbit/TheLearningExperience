SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20012F_1] (@Field_ID_RS int, @Field_Alias_RS char(81), @Field_ID_RE int, @Field_Alias_RE char(81)) AS /* 12.00.0311.000 */ set nocount on IF @Field_ID_RS IS NULL BEGIN SELECT TOP 25  Field_ID, Field_Alias, Alias_Field_ID, Field_Number, Lookup_Field_Number, DEX_ROW_ID FROM .EXT20012 ORDER BY Field_ID ASC, Field_Alias ASC END ELSE IF @Field_ID_RS = @Field_ID_RE BEGIN SELECT TOP 25  Field_ID, Field_Alias, Alias_Field_ID, Field_Number, Lookup_Field_Number, DEX_ROW_ID FROM .EXT20012 WHERE Field_ID = @Field_ID_RS AND Field_Alias BETWEEN @Field_Alias_RS AND @Field_Alias_RE ORDER BY Field_ID ASC, Field_Alias ASC END ELSE BEGIN SELECT TOP 25  Field_ID, Field_Alias, Alias_Field_ID, Field_Number, Lookup_Field_Number, DEX_ROW_ID FROM .EXT20012 WHERE Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE AND Field_Alias BETWEEN @Field_Alias_RS AND @Field_Alias_RE ORDER BY Field_ID ASC, Field_Alias ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20012F_1] TO [DYNGRP]
GO
