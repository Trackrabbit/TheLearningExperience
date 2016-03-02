SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900600F_1] (@BSSI_Recog_TemplateID_RS char(25), @BSSI_Recog_TemplateID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recog_TemplateID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recog_TemplateID, BSSI_Description, NOTEINDX, BSSI_Total_Length, DEX_ROW_ID FROM .B2900600 ORDER BY BSSI_Recog_TemplateID ASC END ELSE IF @BSSI_Recog_TemplateID_RS = @BSSI_Recog_TemplateID_RE BEGIN SELECT TOP 25  BSSI_Recog_TemplateID, BSSI_Description, NOTEINDX, BSSI_Total_Length, DEX_ROW_ID FROM .B2900600 WHERE BSSI_Recog_TemplateID = @BSSI_Recog_TemplateID_RS ORDER BY BSSI_Recog_TemplateID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recog_TemplateID, BSSI_Description, NOTEINDX, BSSI_Total_Length, DEX_ROW_ID FROM .B2900600 WHERE BSSI_Recog_TemplateID BETWEEN @BSSI_Recog_TemplateID_RS AND @BSSI_Recog_TemplateID_RE ORDER BY BSSI_Recog_TemplateID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900600F_1] TO [DYNGRP]
GO
