SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510052SS_4] (@VENDORID char(15), @MJW_Transaction_Date datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount, DEX_ROW_ID FROM .B0510052 WHERE VENDORID = @VENDORID AND MJW_Transaction_Date = @MJW_Transaction_Date ORDER BY VENDORID ASC, MJW_Transaction_Date ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510052SS_4] TO [DYNGRP]
GO
