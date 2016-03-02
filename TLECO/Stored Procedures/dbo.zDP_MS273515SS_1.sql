SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273515SS_1] (@MSO_EngineGUID char(51), @MSO_Last_Settled_Date datetime, @MSO_Last_Settled_Time datetime) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273515 WHERE MSO_EngineGUID = @MSO_EngineGUID AND MSO_Last_Settled_Date = @MSO_Last_Settled_Date AND MSO_Last_Settled_Time = @MSO_Last_Settled_Time ORDER BY MSO_EngineGUID DESC, MSO_Last_Settled_Date ASC, MSO_Last_Settled_Time ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273515SS_1] TO [DYNGRP]
GO
