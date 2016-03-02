SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07240F_1] (@ListDictID_RS smallint, @ListID_RS smallint, @ViewID_RS int, @CmdParentDictID_RS smallint, @CmdParentFormID_RS smallint, @CmdParentCmdID_RS smallint, @CmdSequence_RS smallint, @ListDictID_RE smallint, @ListID_RE smallint, @ViewID_RE int, @CmdParentDictID_RE smallint, @CmdParentFormID_RE smallint, @CmdParentCmdID_RE smallint, @CmdSequence_RE smallint) AS  set nocount on IF @ListDictID_RS IS NULL BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Priority, ButtonSize, CmdCaption, Visible, DEX_ROW_ID FROM .SY07240 ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC, CmdSequence ASC END ELSE IF @ListDictID_RS = @ListDictID_RE BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Priority, ButtonSize, CmdCaption, Visible, DEX_ROW_ID FROM .SY07240 WHERE ListDictID = @ListDictID_RS AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND CmdParentDictID BETWEEN @CmdParentDictID_RS AND @CmdParentDictID_RE AND CmdParentFormID BETWEEN @CmdParentFormID_RS AND @CmdParentFormID_RE AND CmdParentCmdID BETWEEN @CmdParentCmdID_RS AND @CmdParentCmdID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC, CmdSequence ASC END ELSE BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, CmdParentDictID, CmdParentFormID, CmdParentCmdID, CmdSequence, CmdDictID, CmdFormID, CmdID, Priority, ButtonSize, CmdCaption, Visible, DEX_ROW_ID FROM .SY07240 WHERE ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND CmdParentDictID BETWEEN @CmdParentDictID_RS AND @CmdParentDictID_RE AND CmdParentFormID BETWEEN @CmdParentFormID_RS AND @CmdParentFormID_RE AND CmdParentCmdID BETWEEN @CmdParentCmdID_RS AND @CmdParentCmdID_RE AND CmdSequence BETWEEN @CmdSequence_RS AND @CmdSequence_RE ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, CmdParentDictID ASC, CmdParentFormID ASC, CmdParentCmdID ASC, CmdSequence ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07240F_1] TO [DYNGRP]
GO