SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699200SS_3] (@BSSI_PortfolioID char(25), @BSSI_Amenity_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Amenity_ID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699200 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Amenity_ID = @BSSI_Amenity_ID ORDER BY BSSI_PortfolioID ASC, BSSI_Amenity_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699200SS_3] TO [DYNGRP]
GO