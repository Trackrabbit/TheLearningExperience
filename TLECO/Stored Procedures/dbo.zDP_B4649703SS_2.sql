SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4649703SS_2] (@BSSI_PortfolioID char(25), @BSSI_Contact_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4649703 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_ID = @BSSI_Contact_ID ORDER BY BSSI_PortfolioID ASC, BSSI_Contact_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4649703SS_2] TO [DYNGRP]
GO
