SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41300N_2] (@BS int, @ACCTGRPID char(15), @ACCTGRPID_RS char(15), @ACCTGRPID_RE char(15)) AS  set nocount on IF @ACCTGRPID_RS IS NULL BEGIN SELECT TOP 25  ACCTGRPINDEX, ACCTGRPID, ACCTGRPDESC, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41300 WHERE ( ACCTGRPID > @ACCTGRPID ) ORDER BY ACCTGRPID ASC END ELSE IF @ACCTGRPID_RS = @ACCTGRPID_RE BEGIN SELECT TOP 25  ACCTGRPINDEX, ACCTGRPID, ACCTGRPDESC, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41300 WHERE ACCTGRPID = @ACCTGRPID_RS AND ( ACCTGRPID > @ACCTGRPID ) ORDER BY ACCTGRPID ASC END ELSE BEGIN SELECT TOP 25  ACCTGRPINDEX, ACCTGRPID, ACCTGRPDESC, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41300 WHERE ACCTGRPID BETWEEN @ACCTGRPID_RS AND @ACCTGRPID_RE AND ( ACCTGRPID > @ACCTGRPID ) ORDER BY ACCTGRPID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41300N_2] TO [DYNGRP]
GO
