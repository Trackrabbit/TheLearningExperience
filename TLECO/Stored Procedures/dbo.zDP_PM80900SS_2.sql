SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80900SS_2] (@USERID char(15), @INDEX1 smallint, @DOCTYPE smallint, @ID char(21)) AS  set nocount on SELECT TOP 1  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 WHERE USERID = @USERID AND INDEX1 = @INDEX1 AND DOCTYPE = @DOCTYPE AND ID = @ID ORDER BY USERID ASC, INDEX1 ASC, DOCTYPE ASC, ID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80900SS_2] TO [DYNGRP]
GO
