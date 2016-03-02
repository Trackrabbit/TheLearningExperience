SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602209SS_1] (@BSSI_Tenant_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, BSSI_Commencement_Date, BSSI_Lead_Time, BSSI_Renewal_Type, BSSI_First_Term_Months, BSSI_First_Term_Qty, BSSI_First_Term_Years, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Total_Lease_Terms_M, BSSI_Alignment, NOTEINDX, DEX_ROW_ID FROM .B4602209 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number ORDER BY BSSI_Tenant_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602209SS_1] TO [DYNGRP]
GO
