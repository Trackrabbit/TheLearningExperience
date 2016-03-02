SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500300L_3] (@BSSI_Customer_Type_RS smallint, @BSSI_Investor_Type_RS smallint, @BSSI_Customer_Type_RE smallint, @BSSI_Investor_Type_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Customer_Type_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 ORDER BY BSSI_Customer_Type DESC, BSSI_Investor_Type DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Customer_Type_RS = @BSSI_Customer_Type_RE BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 WHERE BSSI_Customer_Type = @BSSI_Customer_Type_RS AND BSSI_Investor_Type BETWEEN @BSSI_Investor_Type_RS AND @BSSI_Investor_Type_RE ORDER BY BSSI_Customer_Type DESC, BSSI_Investor_Type DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 WHERE BSSI_Customer_Type BETWEEN @BSSI_Customer_Type_RS AND @BSSI_Customer_Type_RE AND BSSI_Investor_Type BETWEEN @BSSI_Investor_Type_RS AND @BSSI_Investor_Type_RE ORDER BY BSSI_Customer_Type DESC, BSSI_Investor_Type DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500300L_3] TO [DYNGRP]
GO
