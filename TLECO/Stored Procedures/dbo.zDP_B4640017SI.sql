SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640017SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNITMSEQ int, @BSSI_PortfolioID char(25), @BSSI_Template_ID char(25), @DSCRIPTN char(31), @BSSI_MajorStoreSqFt numeric(19,5), @BSSI_CoTenancy tinyint, @BSSI_MinTargetOccupancy numeric(19,5), @BSSI_AdminFee numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640017 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_CoTenancy, BSSI_MinTargetOccupancy, BSSI_AdminFee) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNITMSEQ, @BSSI_PortfolioID, @BSSI_Template_ID, @DSCRIPTN, @BSSI_MajorStoreSqFt, @BSSI_CoTenancy, @BSSI_MinTargetOccupancy, @BSSI_AdminFee) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640017SI] TO [DYNGRP]
GO
