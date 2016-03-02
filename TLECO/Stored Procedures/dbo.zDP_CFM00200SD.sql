SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00200SD] (@versionMajor smallint, @versionMinor smallint, @versionBuild smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CFM00200 WHERE versionMajor = @versionMajor AND versionMinor = @versionMinor AND versionBuild = @versionBuild AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CFM00200 WHERE versionMajor = @versionMajor AND versionMinor = @versionMinor AND versionBuild = @versionBuild SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00200SD] TO [DYNGRP]
GO
