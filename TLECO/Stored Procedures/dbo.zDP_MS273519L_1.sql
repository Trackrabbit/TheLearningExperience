SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273519L_1] (@MSO_Import_Setup_ID_RS char(15), @MSO_Import_Setup_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_Import_Setup_ID_RS IS NULL BEGIN SELECT TOP 25  MSO_Import_Setup_ID, MSO_Import_Description, MSO_Filename, MSO_Filetype, DEX_ROW_ID FROM .MS273519 ORDER BY MSO_Import_Setup_ID DESC END ELSE IF @MSO_Import_Setup_ID_RS = @MSO_Import_Setup_ID_RE BEGIN SELECT TOP 25  MSO_Import_Setup_ID, MSO_Import_Description, MSO_Filename, MSO_Filetype, DEX_ROW_ID FROM .MS273519 WHERE MSO_Import_Setup_ID = @MSO_Import_Setup_ID_RS ORDER BY MSO_Import_Setup_ID DESC END ELSE BEGIN SELECT TOP 25  MSO_Import_Setup_ID, MSO_Import_Description, MSO_Filename, MSO_Filetype, DEX_ROW_ID FROM .MS273519 WHERE MSO_Import_Setup_ID BETWEEN @MSO_Import_Setup_ID_RS AND @MSO_Import_Setup_ID_RE ORDER BY MSO_Import_Setup_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273519L_1] TO [DYNGRP]
GO
