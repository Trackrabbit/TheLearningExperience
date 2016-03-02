SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE000200F_1] (@SGMTNUMB_RS smallint, @SGMNTID_RS char(67), @ACTINDX_RS int, @SGMTNUMB_RE smallint, @SGMNTID_RE char(67), @ACTINDX_RE int) AS  set nocount on IF @SGMTNUMB_RS IS NULL BEGIN SELECT TOP 25  SGMTNUMB, SGMNTID, ACTINDX, DEX_ROW_ID FROM .SE000200 ORDER BY SGMTNUMB ASC, SGMNTID ASC, ACTINDX ASC END ELSE IF @SGMTNUMB_RS = @SGMTNUMB_RE BEGIN SELECT TOP 25  SGMTNUMB, SGMNTID, ACTINDX, DEX_ROW_ID FROM .SE000200 WHERE SGMTNUMB = @SGMTNUMB_RS AND SGMNTID BETWEEN @SGMNTID_RS AND @SGMNTID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY SGMTNUMB ASC, SGMNTID ASC, ACTINDX ASC END ELSE BEGIN SELECT TOP 25  SGMTNUMB, SGMNTID, ACTINDX, DEX_ROW_ID FROM .SE000200 WHERE SGMTNUMB BETWEEN @SGMTNUMB_RS AND @SGMTNUMB_RE AND SGMNTID BETWEEN @SGMNTID_RS AND @SGMNTID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY SGMTNUMB ASC, SGMNTID ASC, ACTINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000200F_1] TO [DYNGRP]
GO