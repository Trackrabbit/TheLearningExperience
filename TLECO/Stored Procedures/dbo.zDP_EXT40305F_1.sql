SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT40305F_1] (@Extender_Form_ID_RS char(15), @Extender_Form_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Form_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Form_ID, Next_ID_Field_Value, DEX_ROW_ID FROM .EXT40305 ORDER BY Extender_Form_ID ASC END ELSE IF @Extender_Form_ID_RS = @Extender_Form_ID_RE BEGIN SELECT TOP 25  Extender_Form_ID, Next_ID_Field_Value, DEX_ROW_ID FROM .EXT40305 WHERE Extender_Form_ID = @Extender_Form_ID_RS ORDER BY Extender_Form_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Form_ID, Next_ID_Field_Value, DEX_ROW_ID FROM .EXT40305 WHERE Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE ORDER BY Extender_Form_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT40305F_1] TO [DYNGRP]
GO
