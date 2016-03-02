SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40100SS_1] (@BSNSFMID char(15)) AS  set nocount on SELECT TOP 1  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 WHERE BSNSFMID = @BSNSFMID ORDER BY BSNSFMID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40100SS_1] TO [DYNGRP]
GO
