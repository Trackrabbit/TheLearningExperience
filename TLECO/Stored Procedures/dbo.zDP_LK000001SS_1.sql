SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000001SS_1] (@KEYNUMBR smallint) AS  set nocount on SELECT TOP 1  KEYNUMBR, LK_Zero_Balance, LK_Archive_Date, LK_Single_Account, LK_Allow_Delete, LK_Password, LK_Next_Link_No, LK_ReUseLinks, DEX_ROW_ID FROM .LK000001 WHERE KEYNUMBR = @KEYNUMBR ORDER BY KEYNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000001SS_1] TO [DYNGRP]
GO
