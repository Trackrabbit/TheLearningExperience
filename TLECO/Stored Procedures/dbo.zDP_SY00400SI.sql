SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00400SI] (@USERID char(15), @PALSQNUM smallint, @PALPMTNM char(21), @PALCMDTP smallint, @PALETCMD char(255), @APLICFIL char(255), @DICTID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY00400 (USERID, PALSQNUM, PALPMTNM, PALCMDTP, PALETCMD, APLICFIL, DICTID) VALUES ( @USERID, @PALSQNUM, @PALPMTNM, @PALCMDTP, @PALETCMD, @APLICFIL, @DICTID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00400SI] TO [DYNGRP]
GO
