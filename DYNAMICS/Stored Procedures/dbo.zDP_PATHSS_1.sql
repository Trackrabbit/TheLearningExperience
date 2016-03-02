SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_PATHSS_1] (@versionBuild smallint) AS  set nocount on SELECT TOP 1  versionBuild, versionMajor, DEX_ROW_ID FROM .PATH WHERE versionBuild = @versionBuild ORDER BY versionBuild ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PATHSS_1] TO [DYNGRP]
GO
