SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10400L_1] (@INDXLONG_RS int, @INDXLONG_RE int) AS  set nocount on IF @INDXLONG_RS IS NULL BEGIN SELECT TOP 25  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 ORDER BY INDXLONG DESC END ELSE IF @INDXLONG_RS = @INDXLONG_RE BEGIN SELECT TOP 25  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 WHERE INDXLONG = @INDXLONG_RS ORDER BY INDXLONG DESC END ELSE BEGIN SELECT TOP 25  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 WHERE INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY INDXLONG DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10400L_1] TO [DYNGRP]
GO