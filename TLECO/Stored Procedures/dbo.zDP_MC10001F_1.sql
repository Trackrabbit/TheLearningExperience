SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC10001F_1] (@RVLUEID_RS char(15), @CURNCYID_RS char(15), @RATETPID_RS char(15), @RVLUEID_RE char(15), @CURNCYID_RE char(15), @RATETPID_RE char(15)) AS  set nocount on IF @RVLUEID_RS IS NULL BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 ORDER BY RVLUEID ASC, CURNCYID ASC, RATETPID ASC, DEX_ROW_ID ASC END ELSE IF @RVLUEID_RS = @RVLUEID_RE BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE RVLUEID = @RVLUEID_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE ORDER BY RVLUEID ASC, CURNCYID ASC, RATETPID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE RVLUEID BETWEEN @RVLUEID_RS AND @RVLUEID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE ORDER BY RVLUEID ASC, CURNCYID ASC, RATETPID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC10001F_1] TO [DYNGRP]
GO
