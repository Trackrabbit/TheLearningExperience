SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC00100F_2] (@CURNCYID_RS char(15), @EXGTBLID_RS char(15), @CURNCYID_RE char(15), @EXGTBLID_RE char(15)) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 ORDER BY CURNCYID ASC, EXGTBLID ASC, DEX_ROW_ID ASC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE CURNCYID = @CURNCYID_RS AND EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE ORDER BY CURNCYID ASC, EXGTBLID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE ORDER BY CURNCYID ASC, EXGTBLID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00100F_2] TO [DYNGRP]
GO
