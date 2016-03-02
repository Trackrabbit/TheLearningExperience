SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00300F_2] (@CURNCYID_RS char(15), @ACTINDX_RS int, @CURNCYID_RE char(15), @ACTINDX_RE int) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 ORDER BY CURNCYID ASC, ACTINDX ASC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 WHERE CURNCYID = @CURNCYID_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY CURNCYID ASC, ACTINDX ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY CURNCYID ASC, ACTINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00300F_2] TO [DYNGRP]
GO