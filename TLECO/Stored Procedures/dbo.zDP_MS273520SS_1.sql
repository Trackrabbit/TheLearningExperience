SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273520SS_1] (@MSO_Import_Setup_ID char(15), @MSO_Import_Seq_Num int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Import_Setup_ID, MSO_Import_Seq_Num, MSO_Fieldname1, MSO_Field_Format, MSO_Field_Type, MSO_Field_Width, DEX_ROW_ID FROM .MS273520 WHERE MSO_Import_Setup_ID = @MSO_Import_Setup_ID AND MSO_Import_Seq_Num = @MSO_Import_Seq_Num ORDER BY MSO_Import_Setup_ID ASC, MSO_Import_Seq_Num ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273520SS_1] TO [DYNGRP]
GO
