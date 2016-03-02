SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40401L_1] (@ITMCLSCD_RS char(11), @CURNCYID_RS char(15), @ITMCLSCD_RE char(11), @CURNCYID_RE char(15)) AS  set nocount on IF @ITMCLSCD_RS IS NULL BEGIN SELECT TOP 25  ITMCLSCD, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .IV40401 ORDER BY ITMCLSCD DESC, CURNCYID DESC END ELSE IF @ITMCLSCD_RS = @ITMCLSCD_RE BEGIN SELECT TOP 25  ITMCLSCD, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .IV40401 WHERE ITMCLSCD = @ITMCLSCD_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY ITMCLSCD DESC, CURNCYID DESC END ELSE BEGIN SELECT TOP 25  ITMCLSCD, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .IV40401 WHERE ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY ITMCLSCD DESC, CURNCYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40401L_1] TO [DYNGRP]
GO