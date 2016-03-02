SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900700L_1] (@BSSI_Recog_TemplateID_RS char(25), @LNITMSEQ_RS int, @BSSI_Recog_TemplateID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recog_TemplateID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recog_TemplateID, LNITMSEQ, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, BSSI_InterestRate, BSSI_Recalculate, DEX_ROW_ID FROM .B2900700 ORDER BY BSSI_Recog_TemplateID DESC, LNITMSEQ DESC END ELSE IF @BSSI_Recog_TemplateID_RS = @BSSI_Recog_TemplateID_RE BEGIN SELECT TOP 25  BSSI_Recog_TemplateID, LNITMSEQ, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, BSSI_InterestRate, BSSI_Recalculate, DEX_ROW_ID FROM .B2900700 WHERE BSSI_Recog_TemplateID = @BSSI_Recog_TemplateID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Recog_TemplateID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_Recog_TemplateID, LNITMSEQ, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, BSSI_InterestRate, BSSI_Recalculate, DEX_ROW_ID FROM .B2900700 WHERE BSSI_Recog_TemplateID BETWEEN @BSSI_Recog_TemplateID_RS AND @BSSI_Recog_TemplateID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Recog_TemplateID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900700L_1] TO [DYNGRP]
GO
