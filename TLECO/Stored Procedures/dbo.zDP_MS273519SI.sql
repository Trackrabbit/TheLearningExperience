SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273519SI] (@MSO_Import_Setup_ID char(15), @MSO_Import_Description char(31), @MSO_Filename char(255), @MSO_Filetype smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273519 (MSO_Import_Setup_ID, MSO_Import_Description, MSO_Filename, MSO_Filetype) VALUES ( @MSO_Import_Setup_ID, @MSO_Import_Description, @MSO_Filename, @MSO_Filetype) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273519SI] TO [DYNGRP]
GO
