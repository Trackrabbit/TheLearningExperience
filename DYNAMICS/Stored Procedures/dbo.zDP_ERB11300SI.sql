SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11300SI] (@Excel_Report_ID char(15), @LNITMSEQ int, @Value_Number smallint, @STRGA255 char(255), @STRGB255 char(255), @From_Amount numeric(19,5), @To_Amount numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @STRTTIME datetime, @ENDTIME datetime, @From_Window_Number smallint, @To_Window_Number smallint, @From_Field_Number smallint, @To_Field_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11300 (Excel_Report_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number) VALUES ( @Excel_Report_ID, @LNITMSEQ, @Value_Number, @STRGA255, @STRGB255, @From_Amount, @To_Amount, @STRTDATE, @ENDDATE, @STRTTIME, @ENDTIME, @From_Window_Number, @To_Window_Number, @From_Field_Number, @To_Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11300SI] TO [DYNGRP]
GO
