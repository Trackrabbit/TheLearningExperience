SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900700SS_1] (@BSSI_Recog_TemplateID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recog_TemplateID, LNITMSEQ, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, BSSI_InterestRate, BSSI_Recalculate, DEX_ROW_ID FROM .B2900700 WHERE BSSI_Recog_TemplateID = @BSSI_Recog_TemplateID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Recog_TemplateID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900700SS_1] TO [DYNGRP]
GO
