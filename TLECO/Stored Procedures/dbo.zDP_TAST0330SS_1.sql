SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAST0330SS_1] (@ATTTYP char(31)) AS  set nocount on SELECT TOP 1  ATTTYP, DEX_ROW_ID FROM .TAST0330 WHERE ATTTYP = @ATTTYP ORDER BY ATTTYP ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAST0330SS_1] TO [DYNGRP]
GO
