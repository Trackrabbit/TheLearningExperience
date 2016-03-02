SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240471L_1] (@ME_PayrollCode_Type_RS smallint, @ME_Payroll_Code_RS char(7), @ME_PayrollCode_Type_RE smallint, @ME_Payroll_Code_RE char(7)) AS /* 14.00.0084.000 */ set nocount on IF @ME_PayrollCode_Type_RS IS NULL BEGIN SELECT TOP 25  ME_PayrollCode_Type, ME_Payroll_Code, DSCRIPTN, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .ME240471 ORDER BY ME_PayrollCode_Type DESC, ME_Payroll_Code DESC END ELSE IF @ME_PayrollCode_Type_RS = @ME_PayrollCode_Type_RE BEGIN SELECT TOP 25  ME_PayrollCode_Type, ME_Payroll_Code, DSCRIPTN, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .ME240471 WHERE ME_PayrollCode_Type = @ME_PayrollCode_Type_RS AND ME_Payroll_Code BETWEEN @ME_Payroll_Code_RS AND @ME_Payroll_Code_RE ORDER BY ME_PayrollCode_Type DESC, ME_Payroll_Code DESC END ELSE BEGIN SELECT TOP 25  ME_PayrollCode_Type, ME_Payroll_Code, DSCRIPTN, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .ME240471 WHERE ME_PayrollCode_Type BETWEEN @ME_PayrollCode_Type_RS AND @ME_PayrollCode_Type_RE AND ME_Payroll_Code BETWEEN @ME_Payroll_Code_RS AND @ME_Payroll_Code_RE ORDER BY ME_PayrollCode_Type DESC, ME_Payroll_Code DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240471L_1] TO [DYNGRP]
GO
