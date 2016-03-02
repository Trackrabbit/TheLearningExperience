SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00947L_2] (@SVC_Tech_Inventory_ID_RS char(11), @ITEMNMBR_RS char(31), @SVC_Tech_Inventory_ID_RE char(11), @ITEMNMBR_RE char(31)) AS  set nocount on IF @SVC_Tech_Inventory_ID_RS IS NULL BEGIN SELECT TOP 25  SVC_Tech_Inventory_ID, ITEMNMBR, LNITMSEQ, QTY_Required, UOFM, NOTEINDX, DEX_ROW_ID FROM .SVC00947 ORDER BY SVC_Tech_Inventory_ID DESC, ITEMNMBR DESC END ELSE IF @SVC_Tech_Inventory_ID_RS = @SVC_Tech_Inventory_ID_RE BEGIN SELECT TOP 25  SVC_Tech_Inventory_ID, ITEMNMBR, LNITMSEQ, QTY_Required, UOFM, NOTEINDX, DEX_ROW_ID FROM .SVC00947 WHERE SVC_Tech_Inventory_ID = @SVC_Tech_Inventory_ID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SVC_Tech_Inventory_ID DESC, ITEMNMBR DESC END ELSE BEGIN SELECT TOP 25  SVC_Tech_Inventory_ID, ITEMNMBR, LNITMSEQ, QTY_Required, UOFM, NOTEINDX, DEX_ROW_ID FROM .SVC00947 WHERE SVC_Tech_Inventory_ID BETWEEN @SVC_Tech_Inventory_ID_RS AND @SVC_Tech_Inventory_ID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SVC_Tech_Inventory_ID DESC, ITEMNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00947L_2] TO [DYNGRP]
GO
