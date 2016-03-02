SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11300L_1] (@SmartList_ID_RS char(15), @LNITMSEQ_RS int, @Value_Number_RS smallint, @SmartList_ID_RE char(15), @LNITMSEQ_RE int, @Value_Number_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .SLB11300 ORDER BY SmartList_ID DESC, LNITMSEQ DESC, Value_Number DESC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .SLB11300 WHERE SmartList_ID = @SmartList_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND Value_Number BETWEEN @Value_Number_RS AND @Value_Number_RE ORDER BY SmartList_ID DESC, LNITMSEQ DESC, Value_Number DESC END ELSE BEGIN SELECT TOP 25  SmartList_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .SLB11300 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND Value_Number BETWEEN @Value_Number_RS AND @Value_Number_RE ORDER BY SmartList_ID DESC, LNITMSEQ DESC, Value_Number DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11300L_1] TO [DYNGRP]
GO
