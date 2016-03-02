SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0520000SI] (@VENDORID char(15), @BSSI_Investment_Number char(21), @YEAR1 smallint, @BSSI_Units_Year_End numeric(19,5), @BSSI_Begining_Capital numeric(19,5), @BSSI_Capital_Contrib numeric(19,5), @BSSI_Withdrawals numeric(19,5), @BSSI_Income numeric(19,5), @BSSI_Ending_Capital numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0520000 (VENDORID, BSSI_Investment_Number, YEAR1, BSSI_Units_Year_End, BSSI_Begining_Capital, BSSI_Capital_Contrib, BSSI_Withdrawals, BSSI_Income, BSSI_Ending_Capital) VALUES ( @VENDORID, @BSSI_Investment_Number, @YEAR1, @BSSI_Units_Year_End, @BSSI_Begining_Capital, @BSSI_Capital_Contrib, @BSSI_Withdrawals, @BSSI_Income, @BSSI_Ending_Capital) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0520000SI] TO [DYNGRP]
GO
