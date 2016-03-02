SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900600SI] (@BSSI_Recog_TemplateID char(25), @BSSI_Description char(51), @NOTEINDX numeric(19,5), @BSSI_Total_Length numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900600 (BSSI_Recog_TemplateID, BSSI_Description, NOTEINDX, BSSI_Total_Length) VALUES ( @BSSI_Recog_TemplateID, @BSSI_Description, @NOTEINDX, @BSSI_Total_Length) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900600SI] TO [DYNGRP]
GO
