SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC8000SS_2] (@PMDTLDESC char(31), @PMDTLID char(9)) AS  set nocount on SELECT TOP 1  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE PMDTLDESC = @PMDTLDESC AND PMDTLID = @PMDTLID ORDER BY PMDTLDESC ASC, PMDTLID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC8000SS_2] TO [DYNGRP]
GO
