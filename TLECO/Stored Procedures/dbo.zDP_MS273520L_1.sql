SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273520L_1] (@MSO_Import_Setup_ID_RS char(15), @MSO_Import_Seq_Num_RS int, @MSO_Import_Setup_ID_RE char(15), @MSO_Import_Seq_Num_RE int) AS /* 12.00.0311.000 */ set nocount on IF @MSO_Import_Setup_ID_RS IS NULL BEGIN SELECT TOP 25  MSO_Import_Setup_ID, MSO_Import_Seq_Num, MSO_Fieldname1, MSO_Field_Format, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273520 ORDER BY MSO_Import_Setup_ID DESC, MSO_Import_Seq_Num DESC END ELSE IF @MSO_Import_Setup_ID_RS = @MSO_Import_Setup_ID_RE BEGIN SELECT TOP 25  MSO_Import_Setup_ID, MSO_Import_Seq_Num, MSO_Fieldname1, MSO_Field_Format, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273520 WHERE MSO_Import_Setup_ID = @MSO_Import_Setup_ID_RS AND MSO_Import_Seq_Num BETWEEN @MSO_Import_Seq_Num_RS AND @MSO_Import_Seq_Num_RE ORDER BY MSO_Import_Setup_ID DESC, MSO_Import_Seq_Num DESC END ELSE BEGIN SELECT TOP 25  MSO_Import_Setup_ID, MSO_Import_Seq_Num, MSO_Fieldname1, MSO_Field_Format, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273520 WHERE MSO_Import_Setup_ID BETWEEN @MSO_Import_Setup_ID_RS AND @MSO_Import_Setup_ID_RE AND MSO_Import_Seq_Num BETWEEN @MSO_Import_Seq_Num_RS AND @MSO_Import_Seq_Num_RE ORDER BY MSO_Import_Setup_ID DESC, MSO_Import_Seq_Num DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273520L_1] TO [DYNGRP]
GO
