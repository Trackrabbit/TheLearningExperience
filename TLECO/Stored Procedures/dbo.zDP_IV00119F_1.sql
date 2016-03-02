SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00119F_1] (@ITEMNMBR_RS char(31), @INCLUDEINCATALOG_RS smallint, @ITEMNMBR_RE char(31), @INCLUDEINCATALOG_RE smallint) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, INCLUDEINCATALOG, DEX_ROW_ID FROM .IV00119 ORDER BY ITEMNMBR ASC, INCLUDEINCATALOG ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, INCLUDEINCATALOG, DEX_ROW_ID FROM .IV00119 WHERE ITEMNMBR = @ITEMNMBR_RS AND INCLUDEINCATALOG BETWEEN @INCLUDEINCATALOG_RS AND @INCLUDEINCATALOG_RE ORDER BY ITEMNMBR ASC, INCLUDEINCATALOG ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, INCLUDEINCATALOG, DEX_ROW_ID FROM .IV00119 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND INCLUDEINCATALOG BETWEEN @INCLUDEINCATALOG_RS AND @INCLUDEINCATALOG_RE ORDER BY ITEMNMBR ASC, INCLUDEINCATALOG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00119F_1] TO [DYNGRP]
GO
