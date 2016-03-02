SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40203N_1] (@BS int, @REPORTID smallint, @ROWNMBR smallint, @REPORTID_RS smallint, @ROWNMBR_RS smallint, @REPORTID_RE smallint, @ROWNMBR_RE smallint) AS  set nocount on IF @REPORTID_RS IS NULL BEGIN SELECT TOP 25  REPORTID, ROWNMBR, RNGE, OLDROW, DEX_ROW_ID FROM .AF40203 WHERE ( REPORTID = @REPORTID AND ROWNMBR > @ROWNMBR OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, ROWNMBR ASC END ELSE IF @REPORTID_RS = @REPORTID_RE BEGIN SELECT TOP 25  REPORTID, ROWNMBR, RNGE, OLDROW, DEX_ROW_ID FROM .AF40203 WHERE REPORTID = @REPORTID_RS AND ROWNMBR BETWEEN @ROWNMBR_RS AND @ROWNMBR_RE AND ( REPORTID = @REPORTID AND ROWNMBR > @ROWNMBR OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, ROWNMBR ASC END ELSE BEGIN SELECT TOP 25  REPORTID, ROWNMBR, RNGE, OLDROW, DEX_ROW_ID FROM .AF40203 WHERE REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ROWNMBR BETWEEN @ROWNMBR_RS AND @ROWNMBR_RE AND ( REPORTID = @REPORTID AND ROWNMBR > @ROWNMBR OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, ROWNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40203N_1] TO [DYNGRP]
GO