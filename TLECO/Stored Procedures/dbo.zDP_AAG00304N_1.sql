SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00304N_1] (@BS int, @USERID char(15), @aaWorkbookName char(65), @USERID_RS char(15), @aaWorkbookName_RS char(65), @USERID_RE char(15), @aaWorkbookName_RE char(65)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, aaWorkbookName, aaHdrIDCol, DEX_ROW_ID FROM .AAG00304 WHERE ( USERID = @USERID AND aaWorkbookName > @aaWorkbookName OR USERID > @USERID ) ORDER BY USERID ASC, aaWorkbookName ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, aaWorkbookName, aaHdrIDCol, DEX_ROW_ID FROM .AAG00304 WHERE USERID = @USERID_RS AND aaWorkbookName BETWEEN @aaWorkbookName_RS AND @aaWorkbookName_RE AND ( USERID = @USERID AND aaWorkbookName > @aaWorkbookName OR USERID > @USERID ) ORDER BY USERID ASC, aaWorkbookName ASC END ELSE BEGIN SELECT TOP 25  USERID, aaWorkbookName, aaHdrIDCol, DEX_ROW_ID FROM .AAG00304 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND aaWorkbookName BETWEEN @aaWorkbookName_RS AND @aaWorkbookName_RE AND ( USERID = @USERID AND aaWorkbookName > @aaWorkbookName OR USERID > @USERID ) ORDER BY USERID ASC, aaWorkbookName ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00304N_1] TO [DYNGRP]
GO
