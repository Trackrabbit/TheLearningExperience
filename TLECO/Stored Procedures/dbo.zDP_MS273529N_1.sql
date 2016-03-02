SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273529N_1] (@BS int, @NDS_Failure_Date datetime, @NDS_Failure_Time datetime, @DEX_ROW_ID int, @NDS_Failure_Date_RS datetime, @NDS_Failure_Time_RS datetime, @NDS_Failure_Date_RE datetime, @NDS_Failure_Time_RE datetime) AS /* 12.00.0311.000 */ set nocount on IF @NDS_Failure_Date_RS IS NULL BEGIN SELECT TOP 25  NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment, DEX_ROW_ID FROM .MS273529 WHERE ( NDS_Failure_Date = @NDS_Failure_Date AND NDS_Failure_Time = @NDS_Failure_Time AND DEX_ROW_ID > @DEX_ROW_ID OR NDS_Failure_Date = @NDS_Failure_Date AND NDS_Failure_Time > @NDS_Failure_Time OR NDS_Failure_Date > @NDS_Failure_Date ) ORDER BY NDS_Failure_Date ASC, NDS_Failure_Time ASC, DEX_ROW_ID ASC END ELSE IF @NDS_Failure_Date_RS = @NDS_Failure_Date_RE BEGIN SELECT TOP 25  NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment, DEX_ROW_ID FROM .MS273529 WHERE NDS_Failure_Date = @NDS_Failure_Date_RS AND NDS_Failure_Time BETWEEN @NDS_Failure_Time_RS AND @NDS_Failure_Time_RE AND ( NDS_Failure_Date = @NDS_Failure_Date AND NDS_Failure_Time = @NDS_Failure_Time AND DEX_ROW_ID > @DEX_ROW_ID OR NDS_Failure_Date = @NDS_Failure_Date AND NDS_Failure_Time > @NDS_Failure_Time OR NDS_Failure_Date > @NDS_Failure_Date ) ORDER BY NDS_Failure_Date ASC, NDS_Failure_Time ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment, DEX_ROW_ID FROM .MS273529 WHERE NDS_Failure_Date BETWEEN @NDS_Failure_Date_RS AND @NDS_Failure_Date_RE AND NDS_Failure_Time BETWEEN @NDS_Failure_Time_RS AND @NDS_Failure_Time_RE AND ( NDS_Failure_Date = @NDS_Failure_Date AND NDS_Failure_Time = @NDS_Failure_Time AND DEX_ROW_ID > @DEX_ROW_ID OR NDS_Failure_Date = @NDS_Failure_Date AND NDS_Failure_Time > @NDS_Failure_Time OR NDS_Failure_Date > @NDS_Failure_Date ) ORDER BY NDS_Failure_Date ASC, NDS_Failure_Time ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273529N_1] TO [DYNGRP]
GO
