SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510107L_1] (@MJW_Investment_Number_RS char(21), @LNITMSEQ_RS int, @MJW_Investment_Number_RE char(21), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investment_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, LNITMSEQ, DEX_ROW_ID FROM .B0510107 ORDER BY MJW_Investment_Number DESC, LNITMSEQ DESC END ELSE IF @MJW_Investment_Number_RS = @MJW_Investment_Number_RE BEGIN SELECT TOP 25  MJW_Investment_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, LNITMSEQ, DEX_ROW_ID FROM .B0510107 WHERE MJW_Investment_Number = @MJW_Investment_Number_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY MJW_Investment_Number DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, PRINCIPAL_AMOUNT, PAYMENT_AMOUNT, SCHEDULE_INT_RATE, SCHEDULE_INT_TYPE1, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, BSSI_Recalculate, LNITMSEQ, DEX_ROW_ID FROM .B0510107 WHERE MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY MJW_Investment_Number DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510107L_1] TO [DYNGRP]
GO
