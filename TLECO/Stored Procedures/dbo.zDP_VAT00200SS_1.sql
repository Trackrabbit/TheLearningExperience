SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT00200SS_1] (@PROTYPECODE char(7)) AS  set nocount on SELECT TOP 1  TCC, NUMASS, PROTYPECODE, PROTYPECODESC, NOTEINDX, DEX_ROW_ID FROM .VAT00200 WHERE PROTYPECODE = @PROTYPECODE ORDER BY PROTYPECODE ASC, DEX_ROW_ID ASC set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT00200SS_1] TO [DYNGRP]
GO