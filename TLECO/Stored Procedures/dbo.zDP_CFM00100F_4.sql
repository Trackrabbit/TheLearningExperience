SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00100F_4] (@Default_Forecast_RS tinyint, @Default_Forecast_RE tinyint) AS  set nocount on IF @Default_Forecast_RS IS NULL BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 ORDER BY Default_Forecast ASC, DEX_ROW_ID ASC END ELSE IF @Default_Forecast_RS = @Default_Forecast_RE BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE Default_Forecast = @Default_Forecast_RS ORDER BY Default_Forecast ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE Default_Forecast BETWEEN @Default_Forecast_RS AND @Default_Forecast_RE ORDER BY Default_Forecast ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00100F_4] TO [DYNGRP]
GO
