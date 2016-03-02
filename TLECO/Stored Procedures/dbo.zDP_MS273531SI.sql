SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273531SI] (@MSO_Last_Settled_Time datetime, @MSO_Last_Settled_Date datetime, @MSO_EngineGUID char(51), @MSO_Total_Transactions int, @MSO_Total_Amount numeric(19,5), @MSO_Total_Credit_Transac int, @MSO_Total_Credit_Amount numeric(19,5), @MSO_Total_Sale_Transacti int, @MSO_Total_Sale_Amount numeric(19,5), @USERDATE datetime, @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273531 (MSO_Last_Settled_Time, MSO_Last_Settled_Date, MSO_EngineGUID, MSO_Total_Transactions, MSO_Total_Amount, MSO_Total_Credit_Transac, MSO_Total_Credit_Amount, MSO_Total_Sale_Transacti, MSO_Total_Sale_Amount, USERDATE, USERID) VALUES ( @MSO_Last_Settled_Time, @MSO_Last_Settled_Date, @MSO_EngineGUID, @MSO_Total_Transactions, @MSO_Total_Amount, @MSO_Total_Credit_Transac, @MSO_Total_Credit_Amount, @MSO_Total_Sale_Transacti, @MSO_Total_Sale_Amount, @USERDATE, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273531SI] TO [DYNGRP]
GO
