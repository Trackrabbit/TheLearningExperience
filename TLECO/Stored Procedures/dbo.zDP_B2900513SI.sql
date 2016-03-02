SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900513SI] (@USERID char(15), @BSSI_ImportID char(15), @BSSI_DeductionMethod smallint, @ERRDESCR char(131), @BSSI_DeductionFrequency smallint, @BSSI_PayPeriodOption smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900513 (USERID, BSSI_ImportID, BSSI_DeductionMethod, ERRDESCR, BSSI_DeductionFrequency, BSSI_PayPeriodOption) VALUES ( @USERID, @BSSI_ImportID, @BSSI_DeductionMethod, @ERRDESCR, @BSSI_DeductionFrequency, @BSSI_PayPeriodOption) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900513SI] TO [DYNGRP]
GO
