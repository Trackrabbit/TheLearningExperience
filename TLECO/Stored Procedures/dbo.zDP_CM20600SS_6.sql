SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20600SS_6] (@CMXFRNUM char(21)) AS  set nocount on SELECT TOP 1  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE CMXFRNUM = @CMXFRNUM ORDER BY CMXFRNUM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20600SS_6] TO [DYNGRP]
GO
