SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORG10000F_2] (@RELID_RS int, @RELID_RE int) AS  set nocount on IF @RELID_RS IS NULL BEGIN SELECT TOP 25  RELID, RELSTRNG, ENTYLVL, ENTYNAMES_1, ENTYNAMES_2, ENTYNAMES_3, ENTYNAMES_4, ENTYDESC, POSSTRING, DEX_ROW_ID FROM .ORG10000 ORDER BY RELID ASC END ELSE IF @RELID_RS = @RELID_RE BEGIN SELECT TOP 25  RELID, RELSTRNG, ENTYLVL, ENTYNAMES_1, ENTYNAMES_2, ENTYNAMES_3, ENTYNAMES_4, ENTYDESC, POSSTRING, DEX_ROW_ID FROM .ORG10000 WHERE RELID = @RELID_RS ORDER BY RELID ASC END ELSE BEGIN SELECT TOP 25  RELID, RELSTRNG, ENTYLVL, ENTYNAMES_1, ENTYNAMES_2, ENTYNAMES_3, ENTYNAMES_4, ENTYDESC, POSSTRING, DEX_ROW_ID FROM .ORG10000 WHERE RELID BETWEEN @RELID_RS AND @RELID_RE ORDER BY RELID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORG10000F_2] TO [DYNGRP]
GO
