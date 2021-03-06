SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00300F_1] (@ACTINDX_RS int, @CURNCYID_RS char(15), @ACTINDX_RE int, @CURNCYID_RE char(15)) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 ORDER BY ACTINDX ASC, CURNCYID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 WHERE ACTINDX = @ACTINDX_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY ACTINDX ASC, CURNCYID ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY ACTINDX ASC, CURNCYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00300F_1] TO [DYNGRP]
GO
