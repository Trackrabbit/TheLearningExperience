SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00200SS_1] (@versionMajor smallint, @versionMinor smallint, @versionBuild smallint) AS  set nocount on SELECT TOP 1  versionMajor, versionMinor, versionBuild, DEX_ROW_ID FROM .CFM00200 WHERE versionMajor = @versionMajor AND versionMinor = @versionMinor AND versionBuild = @versionBuild ORDER BY versionMajor ASC, versionMinor ASC, versionBuild ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00200SS_1] TO [DYNGRP]
GO
