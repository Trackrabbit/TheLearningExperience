SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640007SD] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @Line_SEQ_Offset int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4640007 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNSEQNBR = @LNSEQNBR AND Line_SEQ_Offset = @Line_SEQ_Offset AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4640007 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNSEQNBR = @LNSEQNBR AND Line_SEQ_Offset = @Line_SEQ_Offset SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640007SD] TO [DYNGRP]
GO
