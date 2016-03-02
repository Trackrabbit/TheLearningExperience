SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40203UN_3] (@BS int, @REPORTID smallint, @OLDROW tinyint, @REPORTID_RS smallint, @OLDROW_RS tinyint, @REPORTID_RE smallint, @OLDROW_RE tinyint) AS  set nocount on IF @REPORTID_RS IS NULL BEGIN SELECT TOP 25  REPORTID, ROWNMBR, RNGE, OLDROW, DEX_ROW_ID FROM .AF40203 WHERE ( REPORTID = @REPORTID AND OLDROW > @OLDROW OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, OLDROW ASC, DEX_ROW_ID ASC END ELSE IF @REPORTID_RS = @REPORTID_RE BEGIN SELECT TOP 25  REPORTID, ROWNMBR, RNGE, OLDROW, DEX_ROW_ID FROM .AF40203 WHERE REPORTID = @REPORTID_RS AND OLDROW BETWEEN @OLDROW_RS AND @OLDROW_RE AND ( REPORTID = @REPORTID AND OLDROW > @OLDROW OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, OLDROW ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  REPORTID, ROWNMBR, RNGE, OLDROW, DEX_ROW_ID FROM .AF40203 WHERE REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND OLDROW BETWEEN @OLDROW_RS AND @OLDROW_RE AND ( REPORTID = @REPORTID AND OLDROW > @OLDROW OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, OLDROW ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40203UN_3] TO [DYNGRP]
GO