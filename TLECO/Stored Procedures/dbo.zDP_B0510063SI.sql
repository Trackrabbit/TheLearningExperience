SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510063SI] (@MJW_Transfer_Number char(21), @MJW_Investment_Number char(21), @MJW_Units_Transfered numeric(19,5), @MJW_Investment_Transfer tinyint, @MJW_Transfer_Price numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510063 (MJW_Transfer_Number, MJW_Investment_Number, MJW_Units_Transfered, MJW_Investment_Transfer, MJW_Transfer_Price) VALUES ( @MJW_Transfer_Number, @MJW_Investment_Number, @MJW_Units_Transfered, @MJW_Investment_Transfer, @MJW_Transfer_Price) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510063SI] TO [DYNGRP]
GO
