SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602202SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @BSSI_Equipment_ID char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602202 (BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Equipment_ID, NOTEINDX) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @BSSI_Equipment_ID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602202SI] TO [DYNGRP]
GO
