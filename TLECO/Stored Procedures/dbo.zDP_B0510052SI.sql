SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510052SI] (@MJW_Investment_Number char(21), @LNITMSEQ int, @MJW_Transaction_Type smallint, @MJW_Transaction_Number char(21), @MJW_Original_Capital_Old numeric(19,5), @MJW_Original_Capital_New numeric(19,5), @MJW_Units_Purchased_Old numeric(19,5), @MJW_Units_Purchased_New numeric(19,5), @MJW_Transaction_Date datetime, @MJW_Transaction_User char(15), @VENDORID char(15), @MJW_Interest_Amount numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510052 (MJW_Investment_Number, LNITMSEQ, MJW_Transaction_Type, MJW_Transaction_Number, MJW_Original_Capital_Old, MJW_Original_Capital_New, MJW_Units_Purchased_Old, MJW_Units_Purchased_New, MJW_Transaction_Date, MJW_Transaction_User, VENDORID, MJW_Interest_Amount) VALUES ( @MJW_Investment_Number, @LNITMSEQ, @MJW_Transaction_Type, @MJW_Transaction_Number, @MJW_Original_Capital_Old, @MJW_Original_Capital_New, @MJW_Units_Purchased_Old, @MJW_Units_Purchased_New, @MJW_Transaction_Date, @MJW_Transaction_User, @VENDORID, @MJW_Interest_Amount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510052SI] TO [DYNGRP]
GO
