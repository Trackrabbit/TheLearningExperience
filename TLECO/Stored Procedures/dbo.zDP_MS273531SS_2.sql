SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273531SS_2] (@MSO_EngineGUID char(51)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID, DEX_ROW_ID FROM .MS273531 WHERE MSO_EngineGUID = @MSO_EngineGUID ORDER BY MSO_EngineGUID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273531SS_2] TO [DYNGRP]
GO
