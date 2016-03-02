SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693200SI] (@BSSIChargeRateScheduleID char(25), @BSSI_Cost_Driver_Option smallint, @BSSI_Description char(51), @DATE1 datetime, @TIME1 datetime, @USERID char(15), @NOTEINDX numeric(19,5), @BSSI_EscalateEffective tinyint, @BSSI_Dummy tinyint, @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4693200 (BSSIChargeRateScheduleID, BSSI_Cost_Driver_Option, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_EscalateEffective, BSSI_Dummy, DUMYRCRD) VALUES ( @BSSIChargeRateScheduleID, @BSSI_Cost_Driver_Option, @BSSI_Description, @DATE1, @TIME1, @USERID, @NOTEINDX, @BSSI_EscalateEffective, @BSSI_Dummy, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693200SI] TO [DYNGRP]
GO
