SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000020SI] (@companyID smallint, @PRODID smallint, @versionMajor smallint, @versionMinor smallint, @versionBuild smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DU000020 (companyID, PRODID, versionMajor, versionMinor, versionBuild) VALUES ( @companyID, @PRODID, @versionMajor, @versionMinor, @versionBuild) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000020SI] TO [DYNGRP]
GO
