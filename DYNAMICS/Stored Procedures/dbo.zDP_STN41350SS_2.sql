SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41350SS_2] (@USER2ENT char(15), @USERID char(15)) AS  set nocount on SELECT TOP 1  USERID, USER2ENT, DEX_ROW_ID FROM .STN41350 WHERE USER2ENT = @USER2ENT AND USERID = @USERID ORDER BY USER2ENT ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41350SS_2] TO [DYNGRP]
GO