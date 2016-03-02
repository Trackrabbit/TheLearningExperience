SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00100SI] (@EBS_Forecast_ID char(15), @Forecast_Description char(41), @Default_Forecast tinyint, @Last_Calendar_Date datetime, @Last_Calc_Time datetime, @BankReconcilation tinyint, @Opening_Balance_Amount numeric(19,5), @ACTINDX int, @RM_Open tinyint, @RM_Work tinyint, @RM_Date_Type smallint, @SOP tinyint, @SOP_IncludeQuotes tinyint, @PM_Open tinyint, @PM_Work tinyint, @POP tinyint, @POP_BasedOn smallint, @Cash_Management_Transact tinyint, @Week smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFM00100 (EBS_Forecast_ID, Forecast_Description, Default_Forecast, Last_Calendar_Date, Last_Calc_Time, BankReconcilation, Opening_Balance_Amount, ACTINDX, RM_Open, RM_Work, RM_Date_Type, SOP, SOP_IncludeQuotes, PM_Open, PM_Work, POP, POP_BasedOn, Cash_Management_Transact, Week, NOTEINDX) VALUES ( @EBS_Forecast_ID, @Forecast_Description, @Default_Forecast, @Last_Calendar_Date, @Last_Calc_Time, @BankReconcilation, @Opening_Balance_Amount, @ACTINDX, @RM_Open, @RM_Work, @RM_Date_Type, @SOP, @SOP_IncludeQuotes, @PM_Open, @PM_Work, @POP, @POP_BasedOn, @Cash_Management_Transact, @Week, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00100SI] TO [DYNGRP]
GO
