SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20310L_1] (@Extender_Template_ID_RS int, @Field_ID_RS int, @Extender_Template_ID_RE int, @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Template_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Template_ID, Field_ID, STRGA255, TOTAL, Template_Date_Option, Template_Number_Option, Template_Time_Option, Replacement_Rule, Random_CB, Template_Field_Type, DEX_ROW_ID FROM .EXT20310 ORDER BY Extender_Template_ID DESC, Field_ID DESC END ELSE IF @Extender_Template_ID_RS = @Extender_Template_ID_RE BEGIN SELECT TOP 25  Extender_Template_ID, Field_ID, STRGA255, TOTAL, Template_Date_Option, Template_Number_Option, Template_Time_Option, Replacement_Rule, Random_CB, Template_Field_Type, DEX_ROW_ID FROM .EXT20310 WHERE Extender_Template_ID = @Extender_Template_ID_RS AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Template_ID DESC, Field_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Template_ID, Field_ID, STRGA255, TOTAL, Template_Date_Option, Template_Number_Option, Template_Time_Option, Replacement_Rule, Random_CB, Template_Field_Type, DEX_ROW_ID FROM .EXT20310 WHERE Extender_Template_ID BETWEEN @Extender_Template_ID_RS AND @Extender_Template_ID_RE AND Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Extender_Template_ID DESC, Field_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20310L_1] TO [DYNGRP]
GO
