SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510063SS_1] (@MJW_Transfer_Number char(21), @MJW_Investment_Number char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Transfer_Number, MJW_Investment_Number, MJW_Units_Transfered, MJW_Investment_Transfer, MJW_Transfer_Price, DEX_ROW_ID FROM .B0510063 WHERE MJW_Transfer_Number = @MJW_Transfer_Number AND MJW_Investment_Number = @MJW_Investment_Number ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510063SS_1] TO [DYNGRP]
GO
