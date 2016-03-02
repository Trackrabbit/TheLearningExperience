SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273519SS_1] (@MSO_Import_Setup_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Import_Setup_ID, MSO_Import_Description, MSO_Filename, MSO_Filetype, DEX_ROW_ID FROM .MS273519 WHERE MSO_Import_Setup_ID = @MSO_Import_Setup_ID ORDER BY MSO_Import_Setup_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273519SS_1] TO [DYNGRP]
GO
