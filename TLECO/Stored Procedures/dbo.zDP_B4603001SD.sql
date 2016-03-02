SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603001SD] (@WINDOWID char(21), @CUSTNMBR char(15), @VENDORID char(15), @BSSI_PortfolioID char(25), @LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25), @BSSI_Ground_Lease_Number char(25), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4603001 WHERE WINDOWID = @WINDOWID AND CUSTNMBR = @CUSTNMBR AND VENDORID = @VENDORID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4603001 WHERE WINDOWID = @WINDOWID AND CUSTNMBR = @CUSTNMBR AND VENDORID = @VENDORID AND BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603001SD] TO [DYNGRP]
GO
