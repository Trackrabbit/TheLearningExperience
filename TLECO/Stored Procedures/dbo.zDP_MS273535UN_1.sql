SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273535UN_1] (@BS int, @NDS_Date datetime, @NDS_Time datetime, @NDS_Date_RS datetime, @NDS_Time_RS datetime, @NDS_Date_RE datetime, @NDS_Time_RE datetime) AS /* 12.00.0311.000 */ set nocount on IF @NDS_Date_RS IS NULL BEGIN SELECT TOP 25  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 WHERE ( NDS_Date = @NDS_Date AND NDS_Time > @NDS_Time OR NDS_Date > @NDS_Date ) ORDER BY NDS_Date ASC, NDS_Time ASC, DEX_ROW_ID ASC END ELSE IF @NDS_Date_RS = @NDS_Date_RE BEGIN SELECT TOP 25  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 WHERE NDS_Date = @NDS_Date_RS AND NDS_Time BETWEEN @NDS_Time_RS AND @NDS_Time_RE AND ( NDS_Date = @NDS_Date AND NDS_Time > @NDS_Time OR NDS_Date > @NDS_Date ) ORDER BY NDS_Date ASC, NDS_Time ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 WHERE NDS_Date BETWEEN @NDS_Date_RS AND @NDS_Date_RE AND NDS_Time BETWEEN @NDS_Time_RS AND @NDS_Time_RE AND ( NDS_Date = @NDS_Date AND NDS_Time > @NDS_Time OR NDS_Date > @NDS_Date ) ORDER BY NDS_Date ASC, NDS_Time ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273535UN_1] TO [DYNGRP]
GO
