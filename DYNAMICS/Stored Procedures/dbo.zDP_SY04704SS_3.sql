SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04704SS_3] (@SERVERID char(81)) AS  set nocount on SELECT TOP 1  SERVICEID, SERVERID, DEX_ROW_ID FROM .SY04704 WHERE SERVERID = @SERVERID ORDER BY SERVERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04704SS_3] TO [DYNGRP]
GO