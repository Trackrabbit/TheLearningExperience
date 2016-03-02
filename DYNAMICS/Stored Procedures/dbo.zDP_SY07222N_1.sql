SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07222N_1] (@BS int, @USERID char(15), @ListDictID smallint, @ListID smallint, @CmdSequence smallint, @ViewID int, @USERID_RS char(15), @ListDictID_RS smallint, @ListID_RS smallint, @CmdSequence_RS smallint, @ViewID_RS int, @USERID_RE char(15), @ListDictID_RE smallint, @ListID_RE smallint, @CmdSequence_RE smallint, @ViewID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ListDictID, ListID, CmdSequence, ViewID, DEX_ROW_ID FROM .SY07222 WHERE ( USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence = @CmdSequence AND ViewID > @ViewID OR USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence > @CmdSequence OR USERID = @USERID AND ListDictID = @ListDictID AND ListID > @ListID OR USERID = @USERID AND ListDictID > @ListDictID OR USERID > @USERID ) ORDER BY USERID ASC, ListDictID ASC, ListID ASC, CmdSequence ASC, ViewID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ListDictID, ListID, CmdSequence, ViewID, DEX_ROW_ID FROM .SY07222 WHERE USERID = @USERID_RS AND ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND ( USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence = @CmdSequence AND ViewID > @ViewID OR USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence > @CmdSequence OR USERID = @USERID AND ListDictID = @ListDictID AND ListID > @ListID OR USERID = @USERID AND ListDictID > @ListDictID OR USERID > @USERID ) ORDER BY USERID ASC, ListDictID ASC, ListID ASC, CmdSequence ASC, ViewID ASC END ELSE BEGIN SELECT TOP 25  USERID, ListDictID, ListID, CmdSequence, ViewID, DEX_ROW_ID FROM .SY07222 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND ( USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence = @CmdSequence AND ViewID > @ViewID OR USERID = @USERID AND ListDictID = @ListDictID AND ListID = @ListID AND CmdSequence > @CmdSequence OR USERID = @USERID AND ListDictID = @ListDictID AND ListID > @ListID OR USERID = @USERID AND ListDictID > @ListDictID OR USERID > @USERID ) ORDER BY USERID ASC, ListDictID ASC, ListID ASC, CmdSequence ASC, ViewID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07222N_1] TO [DYNGRP]
GO