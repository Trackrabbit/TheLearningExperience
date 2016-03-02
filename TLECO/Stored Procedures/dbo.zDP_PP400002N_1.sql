SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400002N_1] (@BS int, @USERID char(15), @CMPNYNAM char(65), @BACHNUMB char(15), @BCHSOURC char(15), @WINTYPE smallint, @USERID_RS char(15), @CMPNYNAM_RS char(65), @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @WINTYPE_RS smallint, @USERID_RE char(15), @CMPNYNAM_RE char(65), @BACHNUMB_RE char(15), @BCHSOURC_RE char(15), @WINTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .PP400002 WHERE ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND WINTYPE > @WINTYPE OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB > @BACHNUMB OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, BACHNUMB ASC, BCHSOURC ASC, WINTYPE ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .PP400002 WHERE USERID = @USERID_RS AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND WINTYPE BETWEEN @WINTYPE_RS AND @WINTYPE_RE AND ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND WINTYPE > @WINTYPE OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB > @BACHNUMB OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, BACHNUMB ASC, BCHSOURC ASC, WINTYPE ASC END ELSE BEGIN SELECT TOP 25  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .PP400002 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND WINTYPE BETWEEN @WINTYPE_RS AND @WINTYPE_RE AND ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND WINTYPE > @WINTYPE OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND BACHNUMB > @BACHNUMB OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, BACHNUMB ASC, BCHSOURC ASC, WINTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400002N_1] TO [DYNGRP]
GO