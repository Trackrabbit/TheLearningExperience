SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00603N_2] (@BS int, @USERID char(15), @aaNode char(51), @USERID_RS char(15), @aaNode_RS char(51), @USERID_RE char(15), @aaNode_RE char(51)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE ( USERID = @USERID AND aaNode > @aaNode OR USERID > @USERID ) ORDER BY USERID ASC, aaNode ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE USERID = @USERID_RS AND aaNode BETWEEN @aaNode_RS AND @aaNode_RE AND ( USERID = @USERID AND aaNode > @aaNode OR USERID > @USERID ) ORDER BY USERID ASC, aaNode ASC END ELSE BEGIN SELECT TOP 25  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND aaNode BETWEEN @aaNode_RS AND @aaNode_RE AND ( USERID = @USERID AND aaNode > @aaNode OR USERID > @USERID ) ORDER BY USERID ASC, aaNode ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00603N_2] TO [DYNGRP]
GO
