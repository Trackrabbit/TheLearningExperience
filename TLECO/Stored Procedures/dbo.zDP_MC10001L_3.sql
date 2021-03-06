SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC10001L_3] (@CURNCYID_RS char(15), @RVLUEID_RS char(15), @CURNCYID_RE char(15), @RVLUEID_RE char(15)) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 ORDER BY CURNCYID DESC, RVLUEID DESC, DEX_ROW_ID DESC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE CURNCYID = @CURNCYID_RS AND RVLUEID BETWEEN @RVLUEID_RS AND @RVLUEID_RE ORDER BY CURNCYID DESC, RVLUEID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RVLUEID BETWEEN @RVLUEID_RS AND @RVLUEID_RE ORDER BY CURNCYID DESC, RVLUEID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC10001L_3] TO [DYNGRP]
GO
