SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100160F_2] (@VNDCLSID_RS char(11), @VNDCLSID_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @VNDCLSID_RS IS NULL BEGIN SELECT TOP 25  MODULE1, VNDCLSID, DEX_ROW_ID FROM .B7100160 ORDER BY VNDCLSID ASC, DEX_ROW_ID ASC END ELSE IF @VNDCLSID_RS = @VNDCLSID_RE BEGIN SELECT TOP 25  MODULE1, VNDCLSID, DEX_ROW_ID FROM .B7100160 WHERE VNDCLSID = @VNDCLSID_RS ORDER BY VNDCLSID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MODULE1, VNDCLSID, DEX_ROW_ID FROM .B7100160 WHERE VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE ORDER BY VNDCLSID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100160F_2] TO [DYNGRP]
GO