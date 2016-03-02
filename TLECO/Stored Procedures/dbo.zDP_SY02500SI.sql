SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02500SI] (@ENDTYPE smallint, @SERIES smallint, @MODULE1 smallint, @INDEX1 smallint, @RUTINAME char(31), @DATEDONE datetime, @USERID char(15), @PALCMDTP smallint, @PALETCMD char(255), @APLICFIL char(255), @DICTID smallint, @TIME1 datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY02500 (ENDTYPE, SERIES, MODULE1, INDEX1, RUTINAME, DATEDONE, USERID, PALCMDTP, PALETCMD, APLICFIL, DICTID, TIME1) VALUES ( @ENDTYPE, @SERIES, @MODULE1, @INDEX1, @RUTINAME, @DATEDONE, @USERID, @PALCMDTP, @PALETCMD, @APLICFIL, @DICTID, @TIME1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02500SI] TO [DYNGRP]
GO