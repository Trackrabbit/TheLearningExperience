SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640082SD] (@BSSI_Building_ID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LNSEQNBR numeric(19,5), @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4640082 WHERE BSSI_Building_ID = @BSSI_Building_ID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4640082 WHERE BSSI_Building_ID = @BSSI_Building_ID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640082SD] TO [DYNGRP]
GO
