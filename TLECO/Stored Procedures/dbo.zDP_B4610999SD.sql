SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610999SD] (@BSSI_PortfolioID char(25), @LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @STRTDATE datetime, @USERID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4610999 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID AND STRTDATE = @STRTDATE AND USERID = @USERID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4610999 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID AND STRTDATE = @STRTDATE AND USERID = @USERID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610999SD] TO [DYNGRP]
GO
