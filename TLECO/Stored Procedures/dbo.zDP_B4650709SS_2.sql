SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4650709SS_2] (@BSSI_PortfolioID char(25), @BSSI_Insurance_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, LNITMSEQ, BSSI_Insurance_Type_ID, BSSI_Required_Amount, BSSI_Certificate_Number, BSSI_Policy_Number, BSSI_Insurer, BSSI_Policy_Cost, BSSI_Commencement_Date, BSSI_Termination_Date, BSSI_Policy_Amount, NOTEINDX, DEX_ROW_ID FROM .B4650709 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Insurance_Type_ID = @BSSI_Insurance_Type_ID ORDER BY BSSI_PortfolioID ASC, BSSI_Insurance_Type_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4650709SS_2] TO [DYNGRP]
GO
