SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41001N_2] (@BS int, @DATETYPE smallint, @EXCEPTIONDATE datetime, @DATETYPE_RS smallint, @EXCEPTIONDATE_RS datetime, @DATETYPE_RE smallint, @EXCEPTIONDATE_RE datetime) AS  set nocount on IF @DATETYPE_RS IS NULL BEGIN SELECT TOP 25  EXCEPTIONDATE, DATETYPE, DEX_ROW_ID FROM .IV41001 WHERE ( DATETYPE = @DATETYPE AND EXCEPTIONDATE > @EXCEPTIONDATE OR DATETYPE > @DATETYPE ) ORDER BY DATETYPE ASC, EXCEPTIONDATE ASC END ELSE IF @DATETYPE_RS = @DATETYPE_RE BEGIN SELECT TOP 25  EXCEPTIONDATE, DATETYPE, DEX_ROW_ID FROM .IV41001 WHERE DATETYPE = @DATETYPE_RS AND EXCEPTIONDATE BETWEEN @EXCEPTIONDATE_RS AND @EXCEPTIONDATE_RE AND ( DATETYPE = @DATETYPE AND EXCEPTIONDATE > @EXCEPTIONDATE OR DATETYPE > @DATETYPE ) ORDER BY DATETYPE ASC, EXCEPTIONDATE ASC END ELSE BEGIN SELECT TOP 25  EXCEPTIONDATE, DATETYPE, DEX_ROW_ID FROM .IV41001 WHERE DATETYPE BETWEEN @DATETYPE_RS AND @DATETYPE_RE AND EXCEPTIONDATE BETWEEN @EXCEPTIONDATE_RS AND @EXCEPTIONDATE_RE AND ( DATETYPE = @DATETYPE AND EXCEPTIONDATE > @EXCEPTIONDATE OR DATETYPE > @DATETYPE ) ORDER BY DATETYPE ASC, EXCEPTIONDATE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41001N_2] TO [DYNGRP]
GO
