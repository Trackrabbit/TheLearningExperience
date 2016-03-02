SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602246SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @CUSTNMBR char(15), @ADRSCODE char(15), @BSSI_Total_Leasable_Sq_F numeric(19,5), @BSSI_Total_Leasable_Sq_M numeric(19,5), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602246 (BSSI_Tenant_Lease_Number, LNITMSEQ, CUSTNMBR, ADRSCODE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NOTEINDX) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @CUSTNMBR, @ADRSCODE, @BSSI_Total_Leasable_Sq_F, @BSSI_Total_Leasable_Sq_M, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602246SI] TO [DYNGRP]
GO
