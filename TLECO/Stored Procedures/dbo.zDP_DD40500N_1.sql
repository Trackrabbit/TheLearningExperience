SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD40500N_1] (@BS int, @EMPLOYID char(15), @EMPLOYID_RS char(15), @EMPLOYID_RE char(15)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, DEX_ROW_ID FROM .DD40500 WHERE ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, DEX_ROW_ID FROM .DD40500 WHERE EMPLOYID = @EMPLOYID_RS AND ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, DEX_ROW_ID FROM .DD40500 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD40500N_1] TO [DYNGRP]
GO
