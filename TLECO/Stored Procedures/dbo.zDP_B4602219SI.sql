SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602219SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @BSSI_Equipment_Origin smallint, @BSSI_Equipment_ID char(25), @ITEMNMBR char(31), @SERLNMBR char(21), @BSSI_Asset_Suffix smallint, @BSSI_Index int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602219 (BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Suffix, BSSI_Index, NOTEINDX) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @BSSI_Equipment_Origin, @BSSI_Equipment_ID, @ITEMNMBR, @SERLNMBR, @BSSI_Asset_Suffix, @BSSI_Index, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602219SI] TO [DYNGRP]
GO
