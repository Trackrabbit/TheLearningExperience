SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640012SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Lease_CommDT datetime, @BSSI_Lease_Termination_D datetime, @BSSI_SalesReportFreqcy smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640012 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Lease_CommDT, BSSI_Lease_Termination_D, BSSI_SalesReportFreqcy) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Lease_CommDT, @BSSI_Lease_Termination_D, @BSSI_SalesReportFreqcy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640012SI] TO [DYNGRP]
GO
