SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT00200SS_2] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  TCC, NUMASS, PROTYPECODE, PROTYPECODESC, NOTEINDX, DEX_ROW_ID FROM .VAT00200 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT00200SS_2] TO [DYNGRP]
GO
