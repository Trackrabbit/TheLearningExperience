SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02400SS_1] (@DMYPWDID smallint) AS  set nocount on SELECT TOP 1  DMYPWDID, PASSWORD, DEX_ROW_ID FROM .SY02400 WHERE DMYPWDID = @DMYPWDID ORDER BY DMYPWDID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02400SS_1] TO [DYNGRP]
GO
