SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510052UN_5] (@BS int, @MJW_Investment_Number char(21), @MJW_Transaction_Date datetime, @LNITMSEQ int, @MJW_Investment_Number_RS char(21), @MJW_Transaction_Date_RS datetime, @LNITMSEQ_RS int, @MJW_Investment_Number_RE char(21), @MJW_Transaction_Date_RE datetime, @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investment_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE ( MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transaction_Date = @MJW_Transaction_Date AND LNITMSEQ > @LNITMSEQ OR MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transaction_Date > @MJW_Transaction_Date OR MJW_Investment_Number > @MJW_Investment_Number ) ORDER BY MJW_Investment_Number ASC, MJW_Transaction_Date ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Investment_Number_RS = @MJW_Investment_Number_RE BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE MJW_Investment_Number = @MJW_Investment_Number_RS AND MJW_Transaction_Date BETWEEN @MJW_Transaction_Date_RS AND @MJW_Transaction_Date_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transaction_Date = @MJW_Transaction_Date AND LNITMSEQ > @LNITMSEQ OR MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transaction_Date > @MJW_Transaction_Date OR MJW_Investment_Number > @MJW_Investment_Number ) ORDER BY MJW_Investment_Number ASC, MJW_Transaction_Date ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND MJW_Transaction_Date BETWEEN @MJW_Transaction_Date_RS AND @MJW_Transaction_Date_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transaction_Date = @MJW_Transaction_Date AND LNITMSEQ > @LNITMSEQ OR MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transaction_Date > @MJW_Transaction_Date OR MJW_Investment_Number > @MJW_Investment_Number ) ORDER BY MJW_Investment_Number ASC, MJW_Transaction_Date ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510052UN_5] TO [DYNGRP]
GO
