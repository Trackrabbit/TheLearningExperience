SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27654SS_2] (@CHEKBKID char(15), @MSO_IntegratedProductEna tinyint, @PRODID smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CHEKBKID, PRODID, MSO_BeginPayablesDocumen, MSO_BeginPayablesVendor, MSO_BeginPayablesVoucher, MSO_BeginPayablesVouchGL, MSO_BeginPayrollDocument, MSO_BeginPayrollEmployee, MSO_EndPayablesDocument, MSO_EndPayablesVendor, MSO_EndPayablesVoucher, MSO_EndPayablesVouchGL, MSO_EndPayrollDocument, MSO_EndPayrollEmployee, MSO_IntegratedProductEna, MSO_PayrollSortKey, MSO_PayablesSortKey, MSO_Payables_Handle_Take, DEX_ROW_ID FROM .ME27654 WHERE CHEKBKID = @CHEKBKID AND MSO_IntegratedProductEna = @MSO_IntegratedProductEna AND PRODID = @PRODID ORDER BY CHEKBKID ASC, MSO_IntegratedProductEna ASC, PRODID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27654SS_2] TO [DYNGRP]
GO
