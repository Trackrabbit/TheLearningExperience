SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORG40100F_2] (@ENTYLVL_RS smallint, @ENTYNAME_RS char(21), @ENTYLVL_RE smallint, @ENTYNAME_RE char(21)) AS  set nocount on IF @ENTYLVL_RS IS NULL BEGIN SELECT TOP 25  ENTITYID, ENTYNAME, ENTYDESC, ENTYLVL, DEX_ROW_ID FROM .ORG40100 ORDER BY ENTYLVL ASC, ENTYNAME ASC END ELSE IF @ENTYLVL_RS = @ENTYLVL_RE BEGIN SELECT TOP 25  ENTITYID, ENTYNAME, ENTYDESC, ENTYLVL, DEX_ROW_ID FROM .ORG40100 WHERE ENTYLVL = @ENTYLVL_RS AND ENTYNAME BETWEEN @ENTYNAME_RS AND @ENTYNAME_RE ORDER BY ENTYLVL ASC, ENTYNAME ASC END ELSE BEGIN SELECT TOP 25  ENTITYID, ENTYNAME, ENTYDESC, ENTYLVL, DEX_ROW_ID FROM .ORG40100 WHERE ENTYLVL BETWEEN @ENTYLVL_RS AND @ENTYLVL_RE AND ENTYNAME BETWEEN @ENTYNAME_RS AND @ENTYNAME_RE ORDER BY ENTYLVL ASC, ENTYNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORG40100F_2] TO [DYNGRP]
GO
