SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602203SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @BSSI_UtilityID char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602203 (BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_UtilityID, NOTEINDX) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @BSSI_UtilityID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602203SI] TO [DYNGRP]
GO