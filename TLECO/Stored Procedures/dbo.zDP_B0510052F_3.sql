SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510052F_3] (@MJW_Transaction_Date_RS datetime, @MJW_Transaction_Date_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Transaction_Date_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 ORDER BY MJW_Transaction_Date ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Transaction_Date_RS = @MJW_Transaction_Date_RE BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE MJW_Transaction_Date = @MJW_Transaction_Date_RS ORDER BY MJW_Transaction_Date ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE MJW_Transaction_Date BETWEEN @MJW_Transaction_Date_RS AND @MJW_Transaction_Date_RE ORDER BY MJW_Transaction_Date ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510052F_3] TO [DYNGRP]
GO
