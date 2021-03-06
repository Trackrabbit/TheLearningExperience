SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693200SS_1] (@BSSIChargeRateScheduleID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID ORDER BY BSSIChargeRateScheduleID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693200SS_1] TO [DYNGRP]
GO
