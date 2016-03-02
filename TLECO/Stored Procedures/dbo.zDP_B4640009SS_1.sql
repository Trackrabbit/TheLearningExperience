SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640009SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_ReconciliationOpt, BSSI_ProrationOpt, BSSI_MRReconcileOpt, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B4640009 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640009SS_1] TO [DYNGRP]
GO
