SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00307SS_2] (@TECHID char(11)) AS  set nocount on SELECT TOP 1  EQUIPID, LNITMSEQ, TECHID, DEX_ROW_ID FROM .SVC00307 WHERE TECHID = @TECHID ORDER BY TECHID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00307SS_2] TO [DYNGRP]
GO