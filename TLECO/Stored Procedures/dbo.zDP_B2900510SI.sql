SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900510SI] (@USERID char(15), @BSSI_ImportID char(15), @BSSI_ChargeID char(21), @BSSI_ChargeIncInLease tinyint, @BSSI_ChargeAmt numeric(19,5), @BSSI_ChargeAccountIndex int, @BSSI_ChargeExcludeIntCal tinyint, @STRTDATE datetime, @BSSI_ChargeDuration smallint, @ENDDATE datetime, @From_Period smallint, @To_Period smallint, @ERRDESCR char(131), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2900510 (USERID, BSSI_ImportID, BSSI_ChargeID, BSSI_ChargeIncInLease, BSSI_ChargeAmt, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, ERRDESCR) VALUES ( @USERID, @BSSI_ImportID, @BSSI_ChargeID, @BSSI_ChargeIncInLease, @BSSI_ChargeAmt, @BSSI_ChargeAccountIndex, @BSSI_ChargeExcludeIntCal, @STRTDATE, @BSSI_ChargeDuration, @ENDDATE, @From_Period, @To_Period, @ERRDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900510SI] TO [DYNGRP]
GO
