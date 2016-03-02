SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273535L_1] (@NDS_Date_RS datetime, @NDS_Time_RS datetime, @NDS_Date_RE datetime, @NDS_Time_RE datetime) AS /* 12.00.0311.000 */ set nocount on IF @NDS_Date_RS IS NULL BEGIN SELECT TOP 25  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 ORDER BY NDS_Date DESC, NDS_Time DESC, DEX_ROW_ID DESC END ELSE IF @NDS_Date_RS = @NDS_Date_RE BEGIN SELECT TOP 25  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 WHERE NDS_Date = @NDS_Date_RS AND NDS_Time BETWEEN @NDS_Time_RS AND @NDS_Time_RE ORDER BY NDS_Date DESC, NDS_Time DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 WHERE NDS_Date BETWEEN @NDS_Date_RS AND @NDS_Date_RE AND NDS_Time BETWEEN @NDS_Time_RS AND @NDS_Time_RE ORDER BY NDS_Date DESC, NDS_Time DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273535L_1] TO [DYNGRP]
GO
