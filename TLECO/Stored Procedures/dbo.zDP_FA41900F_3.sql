SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41900F_3] (@USERID_RS char(15), @FAYEAR_RS smallint, @DEPRFROMDATE_RS datetime, @DEPRTODATE_RS datetime, @ASSETINDEX_RS int, @BOOKINDX_RS int, @USERID_RE char(15), @FAYEAR_RE smallint, @DEPRFROMDATE_RE datetime, @DEPRTODATE_RE datetime, @ASSETINDEX_RE int, @BOOKINDX_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ASSETINDEX, BOOKINDX, YTDDEPRAMT, DEPRFROMDATE, DEPRTODATE, FAYEAR, FAPERIOD, DEX_ROW_ID FROM .FA41900 ORDER BY USERID ASC, FAYEAR ASC, DEPRFROMDATE ASC, DEPRTODATE ASC, ASSETINDEX ASC, BOOKINDX ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ASSETINDEX, BOOKINDX, YTDDEPRAMT, DEPRFROMDATE, DEPRTODATE, FAYEAR, FAPERIOD, DEX_ROW_ID FROM .FA41900 WHERE USERID = @USERID_RS AND FAYEAR BETWEEN @FAYEAR_RS AND @FAYEAR_RE AND DEPRFROMDATE BETWEEN @DEPRFROMDATE_RS AND @DEPRFROMDATE_RE AND DEPRTODATE BETWEEN @DEPRTODATE_RS AND @DEPRTODATE_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE ORDER BY USERID ASC, FAYEAR ASC, DEPRFROMDATE ASC, DEPRTODATE ASC, ASSETINDEX ASC, BOOKINDX ASC END ELSE BEGIN SELECT TOP 25  USERID, ASSETINDEX, BOOKINDX, YTDDEPRAMT, DEPRFROMDATE, DEPRTODATE, FAYEAR, FAPERIOD, DEX_ROW_ID FROM .FA41900 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND FAYEAR BETWEEN @FAYEAR_RS AND @FAYEAR_RE AND DEPRFROMDATE BETWEEN @DEPRFROMDATE_RS AND @DEPRFROMDATE_RE AND DEPRTODATE BETWEEN @DEPRTODATE_RS AND @DEPRTODATE_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE ORDER BY USERID ASC, FAYEAR ASC, DEPRFROMDATE ASC, DEPRTODATE ASC, ASSETINDEX ASC, BOOKINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41900F_3] TO [DYNGRP]
GO
