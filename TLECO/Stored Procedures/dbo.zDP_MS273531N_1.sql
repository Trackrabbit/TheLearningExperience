SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273531N_1] (@BS int, @MSO_Last_Settled_Time datetime, @MSO_Last_Settled_Date datetime, @MSO_EngineGUID char(51), @MSO_Last_Settled_Time_RS datetime, @MSO_Last_Settled_Date_RS datetime, @MSO_EngineGUID_RS char(51), @MSO_Last_Settled_Time_RE datetime, @MSO_Last_Settled_Date_RE datetime, @MSO_EngineGUID_RE char(51)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_Last_Settled_Time_RS IS NULL BEGIN SELECT TOP 25  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273531 WHERE ( MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_EngineGUID > @MSO_EngineGUID OR MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date > @MSO_Last_Settled_Date OR MSO_Last_Settled_Time > @MSO_Last_Settled_Time ) ORDER BY MSO_Last_Settled_Time ASC, MSO_Last_Settled_Date ASC, MSO_EngineGUID ASC END ELSE IF @MSO_Last_Settled_Time_RS = @MSO_Last_Settled_Time_RE BEGIN SELECT TOP 25  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273531 WHERE MSO_Last_Settled_Time = @MSO_Last_Settled_Time_RS AND MSO_Last_Settled_Date BETWEEN @MSO_Last_Settled_Date_RS AND @MSO_Last_Settled_Date_RE AND MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND ( MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_EngineGUID > @MSO_EngineGUID OR MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date > @MSO_Last_Settled_Date OR MSO_Last_Settled_Time > @MSO_Last_Settled_Time ) ORDER BY MSO_Last_Settled_Time ASC, MSO_Last_Settled_Date ASC, MSO_EngineGUID ASC END ELSE BEGIN SELECT TOP 25  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273531 WHERE MSO_Last_Settled_Time BETWEEN @MSO_Last_Settled_Time_RS AND @MSO_Last_Settled_Time_RE AND MSO_Last_Settled_Date BETWEEN @MSO_Last_Settled_Date_RS AND @MSO_Last_Settled_Date_RE AND MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND ( MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_EngineGUID > @MSO_EngineGUID OR MSO_Last_Settled_Time = @MSO_Last_Settled_Time AND MSO_Last_Settled_Date > @MSO_Last_Settled_Date OR MSO_Last_Settled_Time > @MSO_Last_Settled_Time ) ORDER BY MSO_Last_Settled_Time ASC, MSO_Last_Settled_Date ASC, MSO_EngineGUID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273531N_1] TO [DYNGRP]
GO
