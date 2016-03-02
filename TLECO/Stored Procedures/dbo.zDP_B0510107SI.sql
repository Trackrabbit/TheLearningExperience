SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510107SI] (@MJW_Investment_Number char(21), @PRINCIPAL_AMOUNT numeric(19,5), @PAYMENT_AMOUNT numeric(19,5), @SCHEDULE_INT_RATE int, @SCHEDULE_INT_TYPE1 smallint, @BSSI_Recognition_Type smallint, @BSSI_Recog_Frequency smallint, @BSSI_Recog_Length_Period int, @BSSI_Recog_Length_Months numeric(19,5), @STRTDATE datetime, @BSSI_Recalculate tinyint, @LNITMSEQ int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510107 (MJW_Investment_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, LNITMSEQ) VALUES ( @MJW_Investment_Number, @PRINCIPAL_AMOUNT, @PAYMENT_AMOUNT, @SCHEDULE_INT_RATE, @SCHEDULE_INT_TYPE1, @BSSI_Recognition_Type, @BSSI_Recog_Frequency, @BSSI_Recog_Length_Period, @BSSI_Recog_Length_Months, @STRTDATE, @BSSI_Recalculate, @LNITMSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510107SI] TO [DYNGRP]
GO
