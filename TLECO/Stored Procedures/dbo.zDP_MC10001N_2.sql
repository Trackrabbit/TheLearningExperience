SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC10001N_2] (@BS int, @RVLUEID char(15), @REVALUNT tinyint, @CURNCYID char(15), @RATETPID char(15), @RVLUEID_RS char(15), @REVALUNT_RS tinyint, @CURNCYID_RS char(15), @RATETPID_RS char(15), @RVLUEID_RE char(15), @REVALUNT_RE tinyint, @CURNCYID_RE char(15), @RATETPID_RE char(15)) AS  set nocount on IF @RVLUEID_RS IS NULL BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE ( RVLUEID = @RVLUEID AND REVALUNT = @REVALUNT AND CURNCYID = @CURNCYID AND RATETPID > @RATETPID OR RVLUEID = @RVLUEID AND REVALUNT = @REVALUNT AND CURNCYID > @CURNCYID OR RVLUEID = @RVLUEID AND REVALUNT > @REVALUNT OR RVLUEID > @RVLUEID ) ORDER BY RVLUEID ASC, REVALUNT ASC, CURNCYID ASC, RATETPID ASC END ELSE IF @RVLUEID_RS = @RVLUEID_RE BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE RVLUEID = @RVLUEID_RS AND REVALUNT BETWEEN @REVALUNT_RS AND @REVALUNT_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE AND ( RVLUEID = @RVLUEID AND REVALUNT = @REVALUNT AND CURNCYID = @CURNCYID AND RATETPID > @RATETPID OR RVLUEID = @RVLUEID AND REVALUNT = @REVALUNT AND CURNCYID > @CURNCYID OR RVLUEID = @RVLUEID AND REVALUNT > @REVALUNT OR RVLUEID > @RVLUEID ) ORDER BY RVLUEID ASC, REVALUNT ASC, CURNCYID ASC, RATETPID ASC END ELSE BEGIN SELECT TOP 25  RVLUEID, REVALUNT, CURNCYID, RATETPID, RVLUDTTN, EXGTBLID, RTCLCMTD, EXCHDATE, XCHGRATE, DEX_ROW_ID FROM .MC10001 WHERE RVLUEID BETWEEN @RVLUEID_RS AND @RVLUEID_RE AND REVALUNT BETWEEN @REVALUNT_RS AND @REVALUNT_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RATETPID BETWEEN @RATETPID_RS AND @RATETPID_RE AND ( RVLUEID = @RVLUEID AND REVALUNT = @REVALUNT AND CURNCYID = @CURNCYID AND RATETPID > @RATETPID OR RVLUEID = @RVLUEID AND REVALUNT = @REVALUNT AND CURNCYID > @CURNCYID OR RVLUEID = @RVLUEID AND REVALUNT > @REVALUNT OR RVLUEID > @RVLUEID ) ORDER BY RVLUEID ASC, REVALUNT ASC, CURNCYID ASC, RATETPID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC10001N_2] TO [DYNGRP]
GO
