SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693200L_1] (@BSSIChargeRateScheduleID_RS char(25), @BSSIChargeRateScheduleID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSIChargeRateScheduleID_RS IS NULL BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 ORDER BY BSSIChargeRateScheduleID DESC END ELSE IF @BSSIChargeRateScheduleID_RS = @BSSIChargeRateScheduleID_RE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID_RS ORDER BY BSSIChargeRateScheduleID DESC END ELSE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 WHERE BSSIChargeRateScheduleID BETWEEN @BSSIChargeRateScheduleID_RS AND @BSSIChargeRateScheduleID_RE ORDER BY BSSIChargeRateScheduleID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693200L_1] TO [DYNGRP]
GO
