SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10400F_2] (@USERID_RS char(15), @INDXLONG_RS int, @USERID_RE char(15), @INDXLONG_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 ORDER BY USERID ASC, INDXLONG ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 WHERE USERID = @USERID_RS AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY USERID ASC, INDXLONG ASC END ELSE BEGIN SELECT TOP 25  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY USERID ASC, INDXLONG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10400F_2] TO [DYNGRP]
GO
