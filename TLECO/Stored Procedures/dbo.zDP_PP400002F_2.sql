SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400002F_2] (@BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @CMPNYNAM_RS char(65), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @CMPNYNAM_RE char(65)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .PP400002 ORDER BY BCHSOURC ASC, BACHNUMB ASC, CMPNYNAM ASC, DEX_ROW_ID ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .PP400002 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE ORDER BY BCHSOURC ASC, BACHNUMB ASC, CMPNYNAM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC, DEX_ROW_ID FROM .PP400002 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE ORDER BY BCHSOURC ASC, BACHNUMB ASC, CMPNYNAM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400002F_2] TO [DYNGRP]
GO