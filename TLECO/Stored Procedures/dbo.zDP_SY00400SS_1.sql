SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00400SS_1] (@USERID char(15), @PALSQNUM smallint) AS  set nocount on SELECT TOP 1  USERID, PALSQNUM, PALPMTNM, PALCMDTP, PALETCMD, APLICFIL, DICTID, DEX_ROW_ID FROM .SY00400 WHERE USERID = @USERID AND PALSQNUM = @PALSQNUM ORDER BY USERID ASC, PALSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00400SS_1] TO [DYNGRP]
GO