SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40101F_1] (@SOPSTATUS_RS smallint, @SOPSTATUS_RE smallint) AS  set nocount on IF @SOPSTATUS_RS IS NULL BEGIN SELECT TOP 25  SOPSTATUS, SOPSTSDESCR, DEX_ROW_ID FROM .SOP40101 ORDER BY SOPSTATUS ASC END ELSE IF @SOPSTATUS_RS = @SOPSTATUS_RE BEGIN SELECT TOP 25  SOPSTATUS, SOPSTSDESCR, DEX_ROW_ID FROM .SOP40101 WHERE SOPSTATUS = @SOPSTATUS_RS ORDER BY SOPSTATUS ASC END ELSE BEGIN SELECT TOP 25  SOPSTATUS, SOPSTSDESCR, DEX_ROW_ID FROM .SOP40101 WHERE SOPSTATUS BETWEEN @SOPSTATUS_RS AND @SOPSTATUS_RE ORDER BY SOPSTATUS ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40101F_1] TO [DYNGRP]
GO