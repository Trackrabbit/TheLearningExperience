SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20300N_2] (@BS int, @Template_Description char(65), @DEX_ROW_ID int, @Template_Description_RS char(65), @Template_Description_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Template_Description_RS IS NULL BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE ( Template_Description = @Template_Description AND DEX_ROW_ID > @DEX_ROW_ID OR Template_Description > @Template_Description ) ORDER BY Template_Description ASC, DEX_ROW_ID ASC END ELSE IF @Template_Description_RS = @Template_Description_RE BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Template_Description = @Template_Description_RS AND ( Template_Description = @Template_Description AND DEX_ROW_ID > @DEX_ROW_ID OR Template_Description > @Template_Description ) ORDER BY Template_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Template_Description BETWEEN @Template_Description_RS AND @Template_Description_RE AND ( Template_Description = @Template_Description AND DEX_ROW_ID > @DEX_ROW_ID OR Template_Description > @Template_Description ) ORDER BY Template_Description ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20300N_2] TO [DYNGRP]
GO
