SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20300N_1] (@BS int, @Extender_Template_ID int, @Extender_Template_ID_RS int, @Extender_Template_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Template_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE ( Extender_Template_ID > @Extender_Template_ID ) ORDER BY Extender_Template_ID ASC END ELSE IF @Extender_Template_ID_RS = @Extender_Template_ID_RE BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Extender_Template_ID = @Extender_Template_ID_RS AND ( Extender_Template_ID > @Extender_Template_ID ) ORDER BY Extender_Template_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Extender_Template_ID BETWEEN @Extender_Template_ID_RS AND @Extender_Template_ID_RE AND ( Extender_Template_ID > @Extender_Template_ID ) ORDER BY Extender_Template_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20300N_1] TO [DYNGRP]
GO
