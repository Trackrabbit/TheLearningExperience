SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00100L_1] (@EBS_Forecast_ID_RS char(15), @EBS_Forecast_ID_RE char(15)) AS  set nocount on IF @EBS_Forecast_ID_RS IS NULL BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 ORDER BY EBS_Forecast_ID DESC END ELSE IF @EBS_Forecast_ID_RS = @EBS_Forecast_ID_RE BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE EBS_Forecast_ID = @EBS_Forecast_ID_RS ORDER BY EBS_Forecast_ID DESC END ELSE BEGIN SELECT TOP 25  EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX, DEX_ROW_ID FROM .CFM00100 WHERE EBS_Forecast_ID BETWEEN @EBS_Forecast_ID_RS AND @EBS_Forecast_ID_RE ORDER BY EBS_Forecast_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00100L_1] TO [DYNGRP]
GO
