SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01000F_3] (@Extender_Type_RS smallint, @Extender_Record_ID_RS int, @Extender_Type_RE smallint, @Extender_Record_ID_RE int) AS /* 14.00.0084.000 */ set nocount on IF @Extender_Type_RS IS NULL BEGIN SELECT TOP 25  Extender_Type, Extender_Form_ID, UD_Field_ID, UD_Form_Field_ID_2, Extender_Record_ID, USERID, DEX_ROW_ID FROM .EXT01000 ORDER BY Extender_Type ASC, Extender_Record_ID ASC END ELSE IF @Extender_Type_RS = @Extender_Type_RE BEGIN SELECT TOP 25  Extender_Type, Extender_Form_ID, UD_Field_ID, UD_Form_Field_ID_2, Extender_Record_ID, USERID, DEX_ROW_ID FROM .EXT01000 WHERE Extender_Type = @Extender_Type_RS AND Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE ORDER BY Extender_Type ASC, Extender_Record_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Type, Extender_Form_ID, UD_Field_ID, UD_Form_Field_ID_2, Extender_Record_ID, USERID, DEX_ROW_ID FROM .EXT01000 WHERE Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_Record_ID BETWEEN @Extender_Record_ID_RS AND @Extender_Record_ID_RE ORDER BY Extender_Type ASC, Extender_Record_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01000F_3] TO [DYNGRP]
GO
