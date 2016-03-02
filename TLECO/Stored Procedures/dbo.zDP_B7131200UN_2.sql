SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7131200UN_2] (@BS int, @BSSI_Recognition_SNumber char(25), @STRTDATE datetime, @BSSI_Recognition_SNumber_RS char(25), @STRTDATE_RS datetime, @BSSI_Recognition_SNumber_RE char(25), @STRTDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DUMYRCRD, DEX_ROW_ID FROM .B7131200 WHERE ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE > @STRTDATE OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DUMYRCRD, DEX_ROW_ID FROM .B7131200 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE > @STRTDATE OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DUMYRCRD, DEX_ROW_ID FROM .B7131200 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE > @STRTDATE OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7131200UN_2] TO [DYNGRP]
GO