SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_PATHSI] (@versionBuild smallint, @versionMajor smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PATH (versionBuild, versionMajor) VALUES ( @versionBuild, @versionMajor) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PATHSI] TO [DYNGRP]
GO
