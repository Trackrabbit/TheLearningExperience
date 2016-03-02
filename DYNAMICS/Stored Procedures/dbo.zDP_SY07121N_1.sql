SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07121N_1] (@BS int, @USERID char(15), @CmdBarDictID smallint, @CmdBarFormID smallint, @CmdBarWindowID smallint, @USERID_RS char(15), @CmdBarDictID_RS smallint, @CmdBarFormID_RS smallint, @CmdBarWindowID_RS smallint, @USERID_RE char(15), @CmdBarDictID_RE smallint, @CmdBarFormID_RE smallint, @CmdBarWindowID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, Visible, ROWNMBR, RowSequence, DEX_ROW_ID FROM .SY07121 WHERE ( USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID > @CmdBarWindowID OR USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID > @CmdBarFormID OR USERID = @USERID AND CmdBarDictID > @CmdBarDictID OR USERID > @USERID ) ORDER BY USERID ASC, CmdBarDictID ASC, CmdBarFormID ASC, CmdBarWindowID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, Visible, ROWNMBR, RowSequence, DEX_ROW_ID FROM .SY07121 WHERE USERID = @USERID_RS AND CmdBarDictID BETWEEN @CmdBarDictID_RS AND @CmdBarDictID_RE AND CmdBarFormID BETWEEN @CmdBarFormID_RS AND @CmdBarFormID_RE AND CmdBarWindowID BETWEEN @CmdBarWindowID_RS AND @CmdBarWindowID_RE AND ( USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID > @CmdBarWindowID OR USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID > @CmdBarFormID OR USERID = @USERID AND CmdBarDictID > @CmdBarDictID OR USERID > @USERID ) ORDER BY USERID ASC, CmdBarDictID ASC, CmdBarFormID ASC, CmdBarWindowID ASC END ELSE BEGIN SELECT TOP 25  USERID, CmdBarDictID, CmdBarFormID, CmdBarWindowID, Visible, ROWNMBR, RowSequence, DEX_ROW_ID FROM .SY07121 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CmdBarDictID BETWEEN @CmdBarDictID_RS AND @CmdBarDictID_RE AND CmdBarFormID BETWEEN @CmdBarFormID_RS AND @CmdBarFormID_RE AND CmdBarWindowID BETWEEN @CmdBarWindowID_RS AND @CmdBarWindowID_RE AND ( USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID = @CmdBarFormID AND CmdBarWindowID > @CmdBarWindowID OR USERID = @USERID AND CmdBarDictID = @CmdBarDictID AND CmdBarFormID > @CmdBarFormID OR USERID = @USERID AND CmdBarDictID > @CmdBarDictID OR USERID > @USERID ) ORDER BY USERID ASC, CmdBarDictID ASC, CmdBarFormID ASC, CmdBarWindowID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07121N_1] TO [DYNGRP]
GO
