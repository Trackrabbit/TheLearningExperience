SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00947SS_2] (@SVC_Tech_Inventory_ID char(11), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  SVC_Tech_Inventory_ID, ITEMNMBR, LNITMSEQ, QTY_Required, UOFM, NOTEINDX, DEX_ROW_ID FROM .SVC00947 WHERE SVC_Tech_Inventory_ID = @SVC_Tech_Inventory_ID AND ITEMNMBR = @ITEMNMBR ORDER BY SVC_Tech_Inventory_ID ASC, ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00947SS_2] TO [DYNGRP]
GO
