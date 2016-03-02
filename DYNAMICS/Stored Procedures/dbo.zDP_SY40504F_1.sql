SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40504F_1] (@BARULEID_RS int, @SQLCRTYP_RS smallint, @SEQNUMBR_RS int, @BARULEID_RE int, @SQLCRTYP_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @BARULEID_RS IS NULL BEGIN SELECT TOP 25  BARULEID, SQLCRTYP, SEQNUMBR, SQLCRTRIA, DEX_ROW_ID FROM .SY40504 ORDER BY BARULEID ASC, SQLCRTYP ASC, SEQNUMBR ASC END ELSE IF @BARULEID_RS = @BARULEID_RE BEGIN SELECT TOP 25  BARULEID, SQLCRTYP, SEQNUMBR, SQLCRTRIA, DEX_ROW_ID FROM .SY40504 WHERE BARULEID = @BARULEID_RS AND SQLCRTYP BETWEEN @SQLCRTYP_RS AND @SQLCRTYP_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY BARULEID ASC, SQLCRTYP ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  BARULEID, SQLCRTYP, SEQNUMBR, SQLCRTRIA, DEX_ROW_ID FROM .SY40504 WHERE BARULEID BETWEEN @BARULEID_RS AND @BARULEID_RE AND SQLCRTYP BETWEEN @SQLCRTYP_RS AND @SQLCRTYP_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY BARULEID ASC, SQLCRTYP ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40504F_1] TO [DYNGRP]
GO
