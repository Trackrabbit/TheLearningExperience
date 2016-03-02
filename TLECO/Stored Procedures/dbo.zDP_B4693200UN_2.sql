SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693200UN_2] (@BS int, @BSSI_Description char(51), @BSSI_Description_RS char(51), @BSSI_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 WHERE ( BSSI_Description > @BSSI_Description ) ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 WHERE BSSI_Description = @BSSI_Description_RS AND ( BSSI_Description > @BSSI_Description ) ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD, DEX_ROW_ID FROM .B4693200 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE AND ( BSSI_Description > @BSSI_Description ) ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693200UN_2] TO [DYNGRP]
GO
