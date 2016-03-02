SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510052N_4] (@BS int, @VENDORID char(15), @MJW_Transaction_Date datetime, @DEX_ROW_ID int, @VENDORID_RS char(15), @MJW_Transaction_Date_RS datetime, @VENDORID_RE char(15), @MJW_Transaction_Date_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE ( VENDORID = @VENDORID AND MJW_Transaction_Date = @MJW_Transaction_Date AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID = @VENDORID AND MJW_Transaction_Date > @MJW_Transaction_Date OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, MJW_Transaction_Date ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE VENDORID = @VENDORID_RS AND MJW_Transaction_Date BETWEEN @MJW_Transaction_Date_RS AND @MJW_Transaction_Date_RE AND ( VENDORID = @VENDORID AND MJW_Transaction_Date = @MJW_Transaction_Date AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID = @VENDORID AND MJW_Transaction_Date > @MJW_Transaction_Date OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, MJW_Transaction_Date ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND MJW_Transaction_Date BETWEEN @MJW_Transaction_Date_RS AND @MJW_Transaction_Date_RE AND ( VENDORID = @VENDORID AND MJW_Transaction_Date = @MJW_Transaction_Date AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID = @VENDORID AND MJW_Transaction_Date > @MJW_Transaction_Date OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, MJW_Transaction_Date ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510052N_4] TO [DYNGRP]
GO
