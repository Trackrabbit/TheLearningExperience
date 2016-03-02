SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466001SS_1] (@BSSI_Template_ID char(25), @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Template_ID, BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Allocation_Percent, NOTEINDX, LOCNCODE, DEX_ROW_ID FROM .BS466001 WHERE BSSI_Template_ID = @BSSI_Template_ID AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE ORDER BY BSSI_Template_ID ASC, BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466001SS_1] TO [DYNGRP]
GO