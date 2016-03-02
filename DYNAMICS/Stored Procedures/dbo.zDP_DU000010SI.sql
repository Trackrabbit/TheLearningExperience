SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000010SI] (@PRODID smallint, @fileNumber smallint, @fileName char(255), @fileOSName char(31), @versionMajor smallint, @versionMinor smallint, @versionBuild smallint, @conversionScript char(31), @ACTION1 smallint, @priorityLevel smallint, @CODENAME char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DU000010 (PRODID, fileNumber, fileName, fileOSName, versionMajor, versionMinor, versionBuild, conversionScript, ACTION1, priorityLevel, CODENAME) VALUES ( @PRODID, @fileNumber, @fileName, @fileOSName, @versionMajor, @versionMinor, @versionBuild, @conversionScript, @ACTION1, @priorityLevel, @CODENAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000010SI] TO [DYNGRP]
GO
