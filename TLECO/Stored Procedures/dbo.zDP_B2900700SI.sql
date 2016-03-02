SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900700SI] (@BSSI_Recog_TemplateID char(25), @LNITMSEQ int, @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period int, @BSSI_Recog_Length_Months numeric(19,5), @BSSI_InterestRate int, @BSSI_Recalculate tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900700 (BSSI_Recog_TemplateID, LNITMSEQ, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, BSSI_InterestRate, BSSI_Recalculate) VALUES ( @BSSI_Recog_TemplateID, @LNITMSEQ, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @BSSI_Recog_Length_Months, @BSSI_InterestRate, @BSSI_Recalculate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900700SI] TO [DYNGRP]
GO
