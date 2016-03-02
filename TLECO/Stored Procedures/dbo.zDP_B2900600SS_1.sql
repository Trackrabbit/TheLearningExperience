SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900600SS_1] (@BSSI_Recog_TemplateID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recog_TemplateID, BSSI_Description, NOTEINDX, BSSI_Total_Length, DEX_ROW_ID FROM .B2900600 WHERE BSSI_Recog_TemplateID = @BSSI_Recog_TemplateID ORDER BY BSSI_Recog_TemplateID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900600SS_1] TO [DYNGRP]
GO
