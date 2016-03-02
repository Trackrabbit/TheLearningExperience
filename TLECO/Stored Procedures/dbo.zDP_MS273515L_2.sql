SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273515L_2] (@MSO_EngineGUID_RS char(51), @MSO_EngineGUID_RE char(51)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_EngineGUID_RS IS NULL BEGIN SELECT TOP 25  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273515 ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID DESC END ELSE IF @MSO_EngineGUID_RS = @MSO_EngineGUID_RE BEGIN SELECT TOP 25  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273515 WHERE MSO_EngineGUID = @MSO_EngineGUID_RS ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273515 WHERE MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE ORDER BY MSO_EngineGUID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273515L_2] TO [DYNGRP]
GO
