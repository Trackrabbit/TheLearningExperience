SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00946SS_2] (@DSCRIPTN char(31)) AS  set nocount on SELECT TOP 1  SVC_Tech_Inventory_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .SVC00946 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00946SS_2] TO [DYNGRP]
GO