SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240471SS_1] (@ME_PayrollCode_Type smallint, @ME_Payroll_Code char(7)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_PayrollCode_Type, ME_Payroll_Code, DSCRIPTN, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .ME240471 WHERE ME_PayrollCode_Type = @ME_PayrollCode_Type AND ME_Payroll_Code = @ME_Payroll_Code ORDER BY ME_PayrollCode_Type ASC, ME_Payroll_Code ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240471SS_1] TO [DYNGRP]
GO
