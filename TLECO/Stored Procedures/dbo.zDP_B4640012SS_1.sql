SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640012SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Lease_CommDT, BSSI_Lease_Termination_D, BSSI_SalesReportFreqcy, DEX_ROW_ID FROM .B4640012 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640012SS_1] TO [DYNGRP]
GO
