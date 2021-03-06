SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00720SS_1] (@USERID char(15), @SVC_Tech_Inventory_ID char(11), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  USERID, SVC_Tech_Inventory_ID, ITEMNMBR, LNITMSEQ, LOCNCODE, UOFM, QTY_Required, QTYONHND, TRXQTY, DEX_ROW_ID FROM .SVC00720 WHERE USERID = @USERID AND SVC_Tech_Inventory_ID = @SVC_Tech_Inventory_ID AND LNITMSEQ = @LNITMSEQ ORDER BY USERID ASC, SVC_Tech_Inventory_ID ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00720SS_1] TO [DYNGRP]
GO
