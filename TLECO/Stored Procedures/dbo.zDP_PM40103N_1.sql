SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM40103N_1] (@BS int, @DISTTYPE smallint, @DISTTYPE_RS smallint, @DISTTYPE_RE smallint) AS  set nocount on IF @DISTTYPE_RS IS NULL BEGIN SELECT TOP 25  DISTTYPE, DSNMSHRT, DSNMLONG, DEX_ROW_ID FROM .PM40103 WHERE ( DISTTYPE > @DISTTYPE ) ORDER BY DISTTYPE ASC END ELSE IF @DISTTYPE_RS = @DISTTYPE_RE BEGIN SELECT TOP 25  DISTTYPE, DSNMSHRT, DSNMLONG, DEX_ROW_ID FROM .PM40103 WHERE DISTTYPE = @DISTTYPE_RS AND ( DISTTYPE > @DISTTYPE ) ORDER BY DISTTYPE ASC END ELSE BEGIN SELECT TOP 25  DISTTYPE, DSNMSHRT, DSNMLONG, DEX_ROW_ID FROM .PM40103 WHERE DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ( DISTTYPE > @DISTTYPE ) ORDER BY DISTTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40103N_1] TO [DYNGRP]
GO