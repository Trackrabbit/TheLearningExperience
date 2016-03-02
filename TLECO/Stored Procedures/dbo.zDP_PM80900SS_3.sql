SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80900SS_3] (@USERID char(15), @INDEX1 smallint, @DATE1 datetime, @VCHRNMBR char(21), @DOCTYPE smallint) AS  set nocount on SELECT TOP 1  USERID, VCHRNMBR, ID, DOCTYPE, CURNCYID, DATE1, INDEX1, DEX_ROW_ID FROM .PM80900 WHERE USERID = @USERID AND INDEX1 = @INDEX1 AND DATE1 = @DATE1 AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE ORDER BY USERID ASC, INDEX1 DESC, DATE1 ASC, VCHRNMBR ASC, DOCTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80900SS_3] TO [DYNGRP]
GO
