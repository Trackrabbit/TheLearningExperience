SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40200SS_1] (@USERID char(15)) AS  set nocount on SELECT TOP 1  USERID, EditAccessCreatedBy, EditAccessAll, INDEX1, DEX_ROW_ID FROM .POP40200 WHERE USERID = @USERID ORDER BY USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40200SS_1] TO [DYNGRP]
GO
