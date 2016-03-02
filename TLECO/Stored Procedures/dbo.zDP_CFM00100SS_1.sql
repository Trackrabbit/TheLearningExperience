SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00100SS_1] (@EBS_Forecast_ID char(15)) AS  set nocount on SELECT TOP 1  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE EBS_Forecast_ID = @EBS_Forecast_ID ORDER BY EBS_Forecast_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00100SS_1] TO [DYNGRP]
GO
