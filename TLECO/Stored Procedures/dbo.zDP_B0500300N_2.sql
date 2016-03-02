SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500300N_2] (@BS int, @CUSTNMBR char(15), @BSSI_Customer_Type smallint, @BSSI_Investor_Type smallint, @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @BSSI_Customer_Type_RS smallint, @BSSI_Investor_Type_RS smallint, @CUSTNMBR_RE char(15), @BSSI_Customer_Type_RE smallint, @BSSI_Investor_Type_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 WHERE ( CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type = @BSSI_Investor_Type AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type > @BSSI_Investor_Type OR CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type > @BSSI_Customer_Type OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, BSSI_Customer_Type ASC, BSSI_Investor_Type ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 WHERE CUSTNMBR = @CUSTNMBR_RS AND BSSI_Customer_Type BETWEEN @BSSI_Customer_Type_RS AND @BSSI_Customer_Type_RE AND BSSI_Investor_Type BETWEEN @BSSI_Investor_Type_RS AND @BSSI_Investor_Type_RE AND ( CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type = @BSSI_Investor_Type AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type > @BSSI_Investor_Type OR CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type > @BSSI_Customer_Type OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, BSSI_Customer_Type ASC, BSSI_Investor_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND BSSI_Customer_Type BETWEEN @BSSI_Customer_Type_RS AND @BSSI_Customer_Type_RE AND BSSI_Investor_Type BETWEEN @BSSI_Investor_Type_RS AND @BSSI_Investor_Type_RE AND ( CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type = @BSSI_Investor_Type AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type > @BSSI_Investor_Type OR CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type > @BSSI_Customer_Type OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, BSSI_Customer_Type ASC, BSSI_Investor_Type ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500300N_2] TO [DYNGRP]
GO
