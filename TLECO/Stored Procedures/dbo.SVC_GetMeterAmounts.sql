SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_GetMeterAmounts] (  @MeterToCheck integer,  @ContractNumber char(11),  @LineNumber numeric(19,5),  @Actual integer OUTPUT,  @MeterBase integer OUTPUT,  @Overage1 integer OUTPUT,  @Overage2 integer OUTPUT,  @Overage3 integer OUTPUT,  @Overage4 integer OUTPUT,  @Charge1 numeric(19,5) OUTPUT,  @Charge2 numeric(19,5) OUTPUT,  @Charge3 numeric(19,5) OUTPUT,  @Charge4 numeric(19,5) OUTPUT,  @Expire tinyint OUTPUT ) As set nocount on   select  @Actual = CASE @MeterToCheck  WHEN 1 THEN Meter_Actuals_1 - Meter_Internal_Uses_1   WHEN 2 THEN Meter_Actuals_2 - Meter_Internal_Uses_2   WHEN 3 THEN Meter_Actuals_3 - Meter_Internal_Uses_3   WHEN 4 THEN Meter_Actuals_4 - Meter_Internal_Uses_4   WHEN 5 THEN Meter_Actuals_5 - Meter_Internal_Uses_5   ELSE 0  END,   @MeterBase = CASE @MeterToCheck  WHEN 1 THEN Meter_Bases_1  WHEN 2 THEN Meter_Bases_2   WHEN 3 THEN Meter_Bases_3   WHEN 4 THEN Meter_Bases_4   WHEN 5 THEN Meter_Bases_5   ELSE 0  END,   @Overage1 = CASE @MeterToCheck  WHEN 1 THEN Meter_Overages_1  WHEN 2 THEN Meter_Overages_2   WHEN 3 THEN Meter_Overages_3   WHEN 4 THEN Meter_Overages_4   WHEN 5 THEN Meter_Overages_5   ELSE 0  END,   @Overage2 = CASE @MeterToCheck  WHEN 1 THEN Meter_Overages_6  WHEN 2 THEN Meter_Overages_7   WHEN 3 THEN Meter_Overages_8   WHEN 4 THEN Meter_Overages_9   WHEN 5 THEN Meter_Overages_10   ELSE 0  END,   @Overage3 = CASE @MeterToCheck  WHEN 1 THEN Meter_Overages_11  WHEN 2 THEN Meter_Overages_12  WHEN 3 THEN Meter_Overages_13  WHEN 4 THEN Meter_Overages_14  WHEN 5 THEN Meter_Overages_15   ELSE 0  END,   @Overage4 = CASE @MeterToCheck  WHEN 1 THEN Meter_Overages_16  WHEN 2 THEN Meter_Overages_17  WHEN 3 THEN Meter_Overages_18  WHEN 4 THEN Meter_Overages_19  WHEN 5 THEN Meter_Overages_20   ELSE 0  END,   @Charge1 = CASE @MeterToCheck  WHEN 1 THEN Meter_Charges_1  WHEN 2 THEN Meter_Charges_2   WHEN 3 THEN Meter_Charges_3   WHEN 4 THEN Meter_Charges_4   WHEN 5 THEN Meter_Charges_5   ELSE 0  END,   @Charge2 = CASE @MeterToCheck  WHEN 1 THEN Meter_Charges_6  WHEN 2 THEN Meter_Charges_7   WHEN 3 THEN Meter_Charges_8   WHEN 4 THEN Meter_Charges_9   WHEN 5 THEN Meter_Charges_10   ELSE 0  END,   @Charge3 = CASE @MeterToCheck  WHEN 1 THEN Meter_Charges_11  WHEN 2 THEN Meter_Charges_12  WHEN 3 THEN Meter_Charges_13  WHEN 4 THEN Meter_Charges_14  WHEN 5 THEN Meter_Charges_15   ELSE 0  END,   @Charge4 = CASE @MeterToCheck  WHEN 1 THEN Meter_Charges_16  WHEN 2 THEN Meter_Charges_17  WHEN 3 THEN Meter_Charges_18  WHEN 4 THEN Meter_Charges_19  WHEN 5 THEN Meter_Charges_20   ELSE 0  END,   @Expire = CASE @MeterToCheck  WHEN 1 THEN Meter_Expires_1  WHEN 2 THEN Meter_Expires_2  WHEN 3 THEN Meter_Expires_3  WHEN 4 THEN Meter_Expires_4  WHEN 5 THEN Meter_Expires_5   ELSE 0  END   from SVC00607  WITH (NOLOCK)   where CONSTS = 2 and CONTNBR = @ContractNumber and LNSEQNBR = @LineNumber return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetMeterAmounts] TO [DYNGRP]
GO
