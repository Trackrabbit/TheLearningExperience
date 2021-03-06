SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05100N_1] (@BS int, @HLPFRMID smallint, @HLPFRMID_RS smallint, @HLPFRMID_RE smallint) AS  set nocount on IF @HLPFRMID_RS IS NULL BEGIN SELECT TOP 25  HLPFRMID, MODULEID, INSM, DEX_ROW_ID FROM .SY05100 WHERE ( HLPFRMID > @HLPFRMID ) ORDER BY HLPFRMID ASC END ELSE IF @HLPFRMID_RS = @HLPFRMID_RE BEGIN SELECT TOP 25  HLPFRMID, MODULEID, INSM, DEX_ROW_ID FROM .SY05100 WHERE HLPFRMID = @HLPFRMID_RS AND ( HLPFRMID > @HLPFRMID ) ORDER BY HLPFRMID ASC END ELSE BEGIN SELECT TOP 25  HLPFRMID, MODULEID, INSM, DEX_ROW_ID FROM .SY05100 WHERE HLPFRMID BETWEEN @HLPFRMID_RS AND @HLPFRMID_RE AND ( HLPFRMID > @HLPFRMID ) ORDER BY HLPFRMID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05100N_1] TO [DYNGRP]
GO
