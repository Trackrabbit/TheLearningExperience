SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA10100SS_1] (@USERID char(15), @GROUPNAME char(15)) AS  set nocount on SELECT TOP 1  USERID, GROUPNAME, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, DEX_ROW_ID FROM .FA10100 WHERE USERID = @USERID AND GROUPNAME = @GROUPNAME ORDER BY USERID ASC, GROUPNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA10100SS_1] TO [DYNGRP]
GO
