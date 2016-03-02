SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00100F_2] (@Forecast_Description_RS char(41), @Forecast_Description_RE char(41)) AS  set nocount on IF @Forecast_Description_RS IS NULL BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 ORDER BY Forecast_Description ASC, DEX_ROW_ID ASC END ELSE IF @Forecast_Description_RS = @Forecast_Description_RE BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE Forecast_Description = @Forecast_Description_RS ORDER BY Forecast_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE Forecast_Description BETWEEN @Forecast_Description_RS AND @Forecast_Description_RE ORDER BY Forecast_Description ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00100F_2] TO [DYNGRP]
GO