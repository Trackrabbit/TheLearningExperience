SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640017SS_2] (@BSSI_PortfolioID char(25), @BSSI_Template_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_CoTenancy, BSSI_MinTargetOccupancy, BSSI_AdminFee, DEX_ROW_ID FROM .B4640017 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Template_ID = @BSSI_Template_ID ORDER BY BSSI_PortfolioID ASC, BSSI_Template_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640017SS_2] TO [DYNGRP]
GO
