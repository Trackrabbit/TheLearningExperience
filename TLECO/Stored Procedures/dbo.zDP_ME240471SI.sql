SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240471SI] (@ME_PayrollCode_Type smallint, @ME_Payroll_Code char(7), @DSCRIPTN char(31), @MDFUSRID char(15), @MODIFDT datetime, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME240471 (ME_PayrollCode_Type, ME_Payroll_Code, DSCRIPTN, MDFUSRID, MODIFDT) VALUES ( @ME_PayrollCode_Type, @ME_Payroll_Code, @DSCRIPTN, @MDFUSRID, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240471SI] TO [DYNGRP]
GO
