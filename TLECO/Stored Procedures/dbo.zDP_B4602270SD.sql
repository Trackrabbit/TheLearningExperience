SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602270SD] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @CMPNTSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4602270 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4602270 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602270SD] TO [DYNGRP]
GO
