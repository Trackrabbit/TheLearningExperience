SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SYVM1000SS_2] (@PRODID smallint, @USERID char(15)) AS  set nocount on SELECT TOP 1  PRODID, VERSIONSTRING_I, USERID, DEX_ROW_ID FROM .SYVM1000 WHERE PRODID = @PRODID AND USERID = @USERID ORDER BY PRODID ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SYVM1000SS_2] TO [DYNGRP]
GO
