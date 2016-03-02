SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510010N_1] (@BS int, @MJW_Offering_ID char(21), @MJW_Log_User char(15), @MJW_Log_Date datetime, @MJW_Log_Time datetime, @MJW_Offering_ID_RS char(21), @MJW_Log_User_RS char(15), @MJW_Log_Date_RS datetime, @MJW_Log_Time_RS datetime, @MJW_Offering_ID_RE char(21), @MJW_Log_User_RE char(15), @MJW_Log_Date_RE datetime, @MJW_Log_Time_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Offering_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Log_User, MJW_Log_Date, MJW_Log_Time, MJW_Log_Type, DEX_ROW_ID, CMMTTEXT FROM .B0510010 WHERE ( MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date = @MJW_Log_Date AND MJW_Log_Time > @MJW_Log_Time OR MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date > @MJW_Log_Date OR MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User > @MJW_Log_User OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJW_Log_User ASC, MJW_Log_Date ASC, MJW_Log_Time ASC END ELSE IF @MJW_Offering_ID_RS = @MJW_Offering_ID_RE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Log_User, MJW_Log_Date, MJW_Log_Time, MJW_Log_Type, DEX_ROW_ID, CMMTTEXT FROM .B0510010 WHERE MJW_Offering_ID = @MJW_Offering_ID_RS AND MJW_Log_User BETWEEN @MJW_Log_User_RS AND @MJW_Log_User_RE AND MJW_Log_Date BETWEEN @MJW_Log_Date_RS AND @MJW_Log_Date_RE AND MJW_Log_Time BETWEEN @MJW_Log_Time_RS AND @MJW_Log_Time_RE AND ( MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date = @MJW_Log_Date AND MJW_Log_Time > @MJW_Log_Time OR MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date > @MJW_Log_Date OR MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User > @MJW_Log_User OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJW_Log_User ASC, MJW_Log_Date ASC, MJW_Log_Time ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Log_User, MJW_Log_Date, MJW_Log_Time, MJW_Log_Type, DEX_ROW_ID, CMMTTEXT FROM .B0510010 WHERE MJW_Offering_ID BETWEEN @MJW_Offering_ID_RS AND @MJW_Offering_ID_RE AND MJW_Log_User BETWEEN @MJW_Log_User_RS AND @MJW_Log_User_RE AND MJW_Log_Date BETWEEN @MJW_Log_Date_RS AND @MJW_Log_Date_RE AND MJW_Log_Time BETWEEN @MJW_Log_Time_RS AND @MJW_Log_Time_RE AND ( MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date = @MJW_Log_Date AND MJW_Log_Time > @MJW_Log_Time OR MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date > @MJW_Log_Date OR MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User > @MJW_Log_User OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJW_Log_User ASC, MJW_Log_Date ASC, MJW_Log_Time ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510010N_1] TO [DYNGRP]
GO
