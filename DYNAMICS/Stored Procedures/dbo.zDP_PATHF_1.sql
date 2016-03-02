SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_PATHF_1] (@versionBuild_RS smallint, @versionBuild_RE smallint) AS  set nocount on IF @versionBuild_RS IS NULL BEGIN SELECT TOP 25  versionBuild, versionMajor, DEX_ROW_ID FROM .PATH ORDER BY versionBuild ASC END ELSE IF @versionBuild_RS = @versionBuild_RE BEGIN SELECT TOP 25  versionBuild, versionMajor, DEX_ROW_ID FROM .PATH WHERE versionBuild = @versionBuild_RS ORDER BY versionBuild ASC END ELSE BEGIN SELECT TOP 25  versionBuild, versionMajor, DEX_ROW_ID FROM .PATH WHERE versionBuild BETWEEN @versionBuild_RS AND @versionBuild_RE ORDER BY versionBuild ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PATHF_1] TO [DYNGRP]
GO
