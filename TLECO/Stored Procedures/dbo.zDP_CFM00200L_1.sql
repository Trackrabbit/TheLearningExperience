SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00200L_1] (@versionMajor_RS smallint, @versionMinor_RS smallint, @versionBuild_RS smallint, @versionMajor_RE smallint, @versionMinor_RE smallint, @versionBuild_RE smallint) AS  set nocount on IF @versionMajor_RS IS NULL BEGIN SELECT TOP 25  versionMajor, versionMinor, versionBuild, DEX_ROW_ID FROM .CFM00200 ORDER BY versionMajor DESC, versionMinor DESC, versionBuild DESC END ELSE IF @versionMajor_RS = @versionMajor_RE BEGIN SELECT TOP 25  versionMajor, versionMinor, versionBuild, DEX_ROW_ID FROM .CFM00200 WHERE versionMajor = @versionMajor_RS AND versionMinor BETWEEN @versionMinor_RS AND @versionMinor_RE AND versionBuild BETWEEN @versionBuild_RS AND @versionBuild_RE ORDER BY versionMajor DESC, versionMinor DESC, versionBuild DESC END ELSE BEGIN SELECT TOP 25  versionMajor, versionMinor, versionBuild, DEX_ROW_ID FROM .CFM00200 WHERE versionMajor BETWEEN @versionMajor_RS AND @versionMajor_RE AND versionMinor BETWEEN @versionMinor_RS AND @versionMinor_RE AND versionBuild BETWEEN @versionBuild_RS AND @versionBuild_RE ORDER BY versionMajor DESC, versionMinor DESC, versionBuild DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00200L_1] TO [DYNGRP]
GO
