SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG70000UN_2] (@BS int, @USERID char(15), @TRXBTCHSRC char(51), @aaGLHdrID int, @USERID_RS char(15), @TRXBTCHSRC_RS char(51), @aaGLHdrID_RS int, @USERID_RE char(15), @TRXBTCHSRC_RE char(51), @aaGLHdrID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1, DEX_ROW_ID FROM .AAG70000 WHERE ( USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaGLHdrID > @aaGLHdrID OR USERID = @USERID AND TRXBTCHSRC > @TRXBTCHSRC OR USERID > @USERID ) ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLHdrID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1, DEX_ROW_ID FROM .AAG70000 WHERE USERID = @USERID_RS AND TRXBTCHSRC BETWEEN @TRXBTCHSRC_RS AND @TRXBTCHSRC_RE AND aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND ( USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaGLHdrID > @aaGLHdrID OR USERID = @USERID AND TRXBTCHSRC > @TRXBTCHSRC OR USERID > @USERID ) ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLHdrID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1, DEX_ROW_ID FROM .AAG70000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TRXBTCHSRC BETWEEN @TRXBTCHSRC_RS AND @TRXBTCHSRC_RE AND aaGLHdrID BETWEEN @aaGLHdrID_RS AND @aaGLHdrID_RE AND ( USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaGLHdrID > @aaGLHdrID OR USERID = @USERID AND TRXBTCHSRC > @TRXBTCHSRC OR USERID > @USERID ) ORDER BY USERID ASC, TRXBTCHSRC ASC, aaGLHdrID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG70000UN_2] TO [DYNGRP]
GO
