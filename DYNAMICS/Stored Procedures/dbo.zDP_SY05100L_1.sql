SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05100L_1] (@HLPFRMID_RS smallint, @HLPFRMID_RE smallint) AS  set nocount on IF @HLPFRMID_RS IS NULL BEGIN SELECT TOP 25  HLPFRMID, MODULEID, INSM, DEX_ROW_ID FROM .SY05100 ORDER BY HLPFRMID DESC END ELSE IF @HLPFRMID_RS = @HLPFRMID_RE BEGIN SELECT TOP 25  HLPFRMID, MODULEID, INSM, DEX_ROW_ID FROM .SY05100 WHERE HLPFRMID = @HLPFRMID_RS ORDER BY HLPFRMID DESC END ELSE BEGIN SELECT TOP 25  HLPFRMID, MODULEID, INSM, DEX_ROW_ID FROM .SY05100 WHERE HLPFRMID BETWEEN @HLPFRMID_RS AND @HLPFRMID_RE ORDER BY HLPFRMID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05100L_1] TO [DYNGRP]
GO
