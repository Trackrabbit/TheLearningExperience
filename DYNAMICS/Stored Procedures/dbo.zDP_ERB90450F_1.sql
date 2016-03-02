SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90450F_1] (@Data_Connection_ID_RS char(15), @LNITMSEQ_RS int, @Value_Number_RS smallint, @Data_Connection_ID_RE char(15), @LNITMSEQ_RE int, @Value_Number_RE smallint) AS set nocount on IF @Data_Connection_ID_RS IS NULL BEGIN SELECT TOP 25  Data_Connection_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .ERB90450 ORDER BY Data_Connection_ID ASC, LNITMSEQ ASC, Value_Number ASC END ELSE IF @Data_Connection_ID_RS = @Data_Connection_ID_RE BEGIN SELECT TOP 25  Data_Connection_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .ERB90450 WHERE Data_Connection_ID = @Data_Connection_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND Value_Number BETWEEN @Value_Number_RS AND @Value_Number_RE ORDER BY Data_Connection_ID ASC, LNITMSEQ ASC, Value_Number ASC END ELSE BEGIN SELECT TOP 25  Data_Connection_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .ERB90450 WHERE Data_Connection_ID BETWEEN @Data_Connection_ID_RS AND @Data_Connection_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND Value_Number BETWEEN @Value_Number_RS AND @Value_Number_RE ORDER BY Data_Connection_ID ASC, LNITMSEQ ASC, Value_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90450F_1] TO [DYNGRP]
GO