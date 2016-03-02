SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600101SS_1] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Date char(7)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, BSSI_Date, BSSI_Sequence, DEX_ROW_ID FROM .B4600101 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Date = @BSSI_Date ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Date ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600101SS_1] TO [DYNGRP]
GO
