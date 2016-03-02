SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699901SD] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Ground_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @STRTDATE datetime, @ENDDATE datetime, @LNSEQNBR numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4699901 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND LNSEQNBR = @LNSEQNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4699901 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND LNSEQNBR = @LNSEQNBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699901SD] TO [DYNGRP]
GO
