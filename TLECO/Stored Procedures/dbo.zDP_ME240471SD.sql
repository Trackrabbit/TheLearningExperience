SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240471SD] (@ME_PayrollCode_Type smallint, @ME_Payroll_Code char(7), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME240471 WHERE ME_PayrollCode_Type = @ME_PayrollCode_Type AND ME_Payroll_Code = @ME_Payroll_Code AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME240471 WHERE ME_PayrollCode_Type = @ME_PayrollCode_Type AND ME_Payroll_Code = @ME_Payroll_Code SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240471SD] TO [DYNGRP]
GO
