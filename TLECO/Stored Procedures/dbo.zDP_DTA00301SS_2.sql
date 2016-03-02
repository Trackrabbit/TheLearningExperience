SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00301SS_2] (@CODEID char(15), @ACTINDX int, @GROUPID char(15)) AS  set nocount on SELECT TOP 1  ACTINDX, GROUPID, CODEID, POSTDESC, PERCENTAMOUNT, DEX_ROW_ID FROM .DTA00301 WHERE CODEID = @CODEID AND ACTINDX = @ACTINDX AND GROUPID = @GROUPID ORDER BY CODEID ASC, ACTINDX ASC, GROUPID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00301SS_2] TO [DYNGRP]
GO
