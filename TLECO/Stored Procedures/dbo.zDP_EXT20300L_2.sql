SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20300L_2] (@Template_Description_RS char(65), @Template_Description_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Template_Description_RS IS NULL BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 ORDER BY Template_Description DESC, DEX_ROW_ID DESC END ELSE IF @Template_Description_RS = @Template_Description_RE BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Template_Description = @Template_Description_RS ORDER BY Template_Description DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID, DEX_ROW_ID FROM .EXT20300 WHERE Template_Description BETWEEN @Template_Description_RS AND @Template_Description_RE ORDER BY Template_Description DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20300L_2] TO [DYNGRP]
GO
