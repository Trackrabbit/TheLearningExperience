SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000004SS_2] (@USERID char(15), @JRNENTRY int) AS  set nocount on SELECT TOP 1  USERID, BACHNUMB, BCHSOURC, JRNENTRY, SQNCLINE, DEX_ROW_ID FROM .IF000004 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY ORDER BY USERID ASC, JRNENTRY ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000004SS_2] TO [DYNGRP]
GO
