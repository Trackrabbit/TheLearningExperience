SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC8000N_1] (@BS int, @PMDTLID char(9), @PMDTLID_RS char(9), @PMDTLID_RE char(9)) AS  set nocount on IF @PMDTLID_RS IS NULL BEGIN SELECT TOP 25  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE ( PMDTLID > @PMDTLID ) ORDER BY PMDTLID ASC END ELSE IF @PMDTLID_RS = @PMDTLID_RE BEGIN SELECT TOP 25  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE PMDTLID = @PMDTLID_RS AND ( PMDTLID > @PMDTLID ) ORDER BY PMDTLID ASC END ELSE BEGIN SELECT TOP 25  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE PMDTLID BETWEEN @PMDTLID_RS AND @PMDTLID_RE AND ( PMDTLID > @PMDTLID ) ORDER BY PMDTLID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC8000N_1] TO [DYNGRP]
GO
