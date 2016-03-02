SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FAINDEXF_1] (@INDXNAME_RS smallint, @INDXNAME_RE smallint) AS  set nocount on IF @INDXNAME_RS IS NULL BEGIN SELECT TOP 25  INDXNAME, INDXFILENAME, INDXVALUE, DEX_ROW_ID FROM .FAINDEX ORDER BY INDXNAME ASC END ELSE IF @INDXNAME_RS = @INDXNAME_RE BEGIN SELECT TOP 25  INDXNAME, INDXFILENAME, INDXVALUE, DEX_ROW_ID FROM .FAINDEX WHERE INDXNAME = @INDXNAME_RS ORDER BY INDXNAME ASC END ELSE BEGIN SELECT TOP 25  INDXNAME, INDXFILENAME, INDXVALUE, DEX_ROW_ID FROM .FAINDEX WHERE INDXNAME BETWEEN @INDXNAME_RS AND @INDXNAME_RE ORDER BY INDXNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FAINDEXF_1] TO [DYNGRP]
GO
