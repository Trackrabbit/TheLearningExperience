SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10400N_1] (@BS int, @PRCGRPID char(31), @ITEMNMBR char(31), @PRCGRPID_RS char(31), @ITEMNMBR_RS char(31), @PRCGRPID_RE char(31), @ITEMNMBR_RE char(31)) AS  set nocount on IF @PRCGRPID_RS IS NULL BEGIN SELECT TOP 25  PRCGRPID, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .IV10400 WHERE ( PRCGRPID = @PRCGRPID AND ITEMNMBR > @ITEMNMBR OR PRCGRPID > @PRCGRPID ) ORDER BY PRCGRPID ASC, ITEMNMBR ASC END ELSE IF @PRCGRPID_RS = @PRCGRPID_RE BEGIN SELECT TOP 25  PRCGRPID, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .IV10400 WHERE PRCGRPID = @PRCGRPID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( PRCGRPID = @PRCGRPID AND ITEMNMBR > @ITEMNMBR OR PRCGRPID > @PRCGRPID ) ORDER BY PRCGRPID ASC, ITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  PRCGRPID, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .IV10400 WHERE PRCGRPID BETWEEN @PRCGRPID_RS AND @PRCGRPID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( PRCGRPID = @PRCGRPID AND ITEMNMBR > @ITEMNMBR OR PRCGRPID > @PRCGRPID ) ORDER BY PRCGRPID ASC, ITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10400N_1] TO [DYNGRP]
GO
