SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510054SS_1] (@MJW_Investment_Number char(21), @LNSEQNBR numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, LNSEQNBR, VENDORID, MJW_Units_Purchased, MJW_Unit_Price, MJW_Units_Sold, BSSI_NewUnitPrice, BSSI_Gain, USERID, USERDATE, RCPTNMBR, SEQCOUNT, DEX_ROW_ID FROM .B0510054 WHERE MJW_Investment_Number = @MJW_Investment_Number AND LNSEQNBR = @LNSEQNBR ORDER BY MJW_Investment_Number ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510054SS_1] TO [DYNGRP]
GO
