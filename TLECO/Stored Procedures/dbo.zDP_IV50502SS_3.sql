SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV50502SS_3] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  POSTEDDT, JRNENTRY, DOCNUMBR, DOCTYPE, TRXSORCE, STRVAL, TRX_ID, EXTDCOST, DEX_ROW_ID FROM .IV50502 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV50502SS_3] TO [DYNGRP]
GO
