SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00940L_2] (@SRVCCDDSC_RS char(31), @SRVCCDDSC_RE char(31)) AS  set nocount on IF @SRVCCDDSC_RS IS NULL BEGIN SELECT TOP 25  SRVCCD, SRVCCDDSC, DEX_ROW_ID FROM .SVC00940 ORDER BY SRVCCDDSC DESC, DEX_ROW_ID DESC END ELSE IF @SRVCCDDSC_RS = @SRVCCDDSC_RE BEGIN SELECT TOP 25  SRVCCD, SRVCCDDSC, DEX_ROW_ID FROM .SVC00940 WHERE SRVCCDDSC = @SRVCCDDSC_RS ORDER BY SRVCCDDSC DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SRVCCD, SRVCCDDSC, DEX_ROW_ID FROM .SVC00940 WHERE SRVCCDDSC BETWEEN @SRVCCDDSC_RS AND @SRVCCDDSC_RE ORDER BY SRVCCDDSC DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00940L_2] TO [DYNGRP]
GO
