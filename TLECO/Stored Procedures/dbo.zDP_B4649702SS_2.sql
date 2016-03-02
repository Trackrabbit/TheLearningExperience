SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4649702SS_2] (@BSSI_PortfolioID char(25), @BSSI_Equipment_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Index, BSSI_Asset_Suffix, NOTEINDX, DEX_ROW_ID FROM .B4649702 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Equipment_ID = @BSSI_Equipment_ID ORDER BY BSSI_PortfolioID ASC, BSSI_Equipment_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4649702SS_2] TO [DYNGRP]
GO
