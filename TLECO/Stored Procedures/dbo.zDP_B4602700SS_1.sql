SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602700SS_1] (@BSSI_Contact_Class_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Contact_Class_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4602700 WHERE BSSI_Contact_Class_ID = @BSSI_Contact_Class_ID ORDER BY BSSI_Contact_Class_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602700SS_1] TO [DYNGRP]
GO
