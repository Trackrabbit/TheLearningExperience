SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00946N_1] (@BS int, @SVC_Tech_Inventory_ID char(11), @SVC_Tech_Inventory_ID_RS char(11), @SVC_Tech_Inventory_ID_RE char(11)) AS  set nocount on IF @SVC_Tech_Inventory_ID_RS IS NULL BEGIN SELECT TOP 25  SVC_Tech_Inventory_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .SVC00946 WHERE ( SVC_Tech_Inventory_ID > @SVC_Tech_Inventory_ID ) ORDER BY SVC_Tech_Inventory_ID ASC END ELSE IF @SVC_Tech_Inventory_ID_RS = @SVC_Tech_Inventory_ID_RE BEGIN SELECT TOP 25  SVC_Tech_Inventory_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .SVC00946 WHERE SVC_Tech_Inventory_ID = @SVC_Tech_Inventory_ID_RS AND ( SVC_Tech_Inventory_ID > @SVC_Tech_Inventory_ID ) ORDER BY SVC_Tech_Inventory_ID ASC END ELSE BEGIN SELECT TOP 25  SVC_Tech_Inventory_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .SVC00946 WHERE SVC_Tech_Inventory_ID BETWEEN @SVC_Tech_Inventory_ID_RS AND @SVC_Tech_Inventory_ID_RE AND ( SVC_Tech_Inventory_ID > @SVC_Tech_Inventory_ID ) ORDER BY SVC_Tech_Inventory_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00946N_1] TO [DYNGRP]
GO
