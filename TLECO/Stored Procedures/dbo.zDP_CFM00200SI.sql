SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00200SI] (@versionMajor smallint, @versionMinor smallint, @versionBuild smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFM00200 (versionMajor, versionMinor, versionBuild) VALUES ( @versionMajor, @versionMinor, @versionBuild) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00200SI] TO [DYNGRP]
GO
