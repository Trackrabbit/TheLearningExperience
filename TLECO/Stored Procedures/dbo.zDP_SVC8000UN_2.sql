SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC8000UN_2] (@BS int, @PMDTLDESC char(31), @PMDTLID char(9), @PMDTLDESC_RS char(31), @PMDTLID_RS char(9), @PMDTLDESC_RE char(31), @PMDTLID_RE char(9)) AS  set nocount on IF @PMDTLDESC_RS IS NULL BEGIN SELECT TOP 25  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE ( PMDTLDESC = @PMDTLDESC AND PMDTLID > @PMDTLID OR PMDTLDESC > @PMDTLDESC ) ORDER BY PMDTLDESC ASC, PMDTLID ASC, DEX_ROW_ID ASC END ELSE IF @PMDTLDESC_RS = @PMDTLDESC_RE BEGIN SELECT TOP 25  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE PMDTLDESC = @PMDTLDESC_RS AND PMDTLID BETWEEN @PMDTLID_RS AND @PMDTLID_RE AND ( PMDTLDESC = @PMDTLDESC AND PMDTLID > @PMDTLID OR PMDTLDESC > @PMDTLDESC ) ORDER BY PMDTLDESC ASC, PMDTLID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PMDTLID, PMDTLDESC, NOTEINDX, DEX_ROW_ID FROM .SVC8000 WHERE PMDTLDESC BETWEEN @PMDTLDESC_RS AND @PMDTLDESC_RE AND PMDTLID BETWEEN @PMDTLID_RS AND @PMDTLID_RE AND ( PMDTLDESC = @PMDTLDESC AND PMDTLID > @PMDTLID OR PMDTLDESC > @PMDTLDESC ) ORDER BY PMDTLDESC ASC, PMDTLID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC8000UN_2] TO [DYNGRP]
GO
