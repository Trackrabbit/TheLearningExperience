SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40709L_2] (@CURNCYID_RS char(15), @PRCGRPID_RS char(31), @CURNCYID_RE char(15), @PRCGRPID_RE char(31)) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  PRCGRPID, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .SOP40709 ORDER BY CURNCYID DESC, PRCGRPID DESC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  PRCGRPID, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .SOP40709 WHERE CURNCYID = @CURNCYID_RS AND PRCGRPID BETWEEN @PRCGRPID_RS AND @PRCGRPID_RE ORDER BY CURNCYID DESC, PRCGRPID DESC END ELSE BEGIN SELECT TOP 25  PRCGRPID, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .SOP40709 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND PRCGRPID BETWEEN @PRCGRPID_RS AND @PRCGRPID_RE ORDER BY CURNCYID DESC, PRCGRPID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40709L_2] TO [DYNGRP]
GO
