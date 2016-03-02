SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466007SI] (@VCHRNMBR char(21), @BSSI_Template_ID char(25), @BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @BSSI_Allocation_Percent numeric(19,5), @NOTEINDX numeric(19,5), @LOCNCODE char(11), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS466007 (VCHRNMBR, BSSI_Template_ID, BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Allocation_Percent, NOTEINDX, LOCNCODE) VALUES ( @VCHRNMBR, @BSSI_Template_ID, @BSSI_Tenant_Lease_Number, @LNITMSEQ, @BSSI_Allocation_Percent, @NOTEINDX, @LOCNCODE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466007SI] TO [DYNGRP]
GO
