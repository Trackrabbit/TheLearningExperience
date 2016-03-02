SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40300SS_1] (@YEAR1 smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  YEAR1, PERIODID, PSTGNMBR, DEX_ROW_ID FROM .GL40300 WHERE YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY YEAR1 ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40300SS_1] TO [DYNGRP]
GO