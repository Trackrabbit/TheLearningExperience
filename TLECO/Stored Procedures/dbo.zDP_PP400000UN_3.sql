SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400000UN_3] (@BS int, @SERIES smallint, @BCHSOURC char(15), @SERIES_RS smallint, @BCHSOURC_RS char(15), @SERIES_RE smallint, @BCHSOURC_RE char(15)) AS  set nocount on IF @SERIES_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE ( SERIES = @SERIES AND BCHSOURC > @BCHSOURC OR SERIES > @SERIES ) ORDER BY SERIES ASC, BCHSOURC ASC, DEX_ROW_ID ASC END ELSE IF @SERIES_RS = @SERIES_RE BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE SERIES = @SERIES_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( SERIES = @SERIES AND BCHSOURC > @BCHSOURC OR SERIES > @SERIES ) ORDER BY SERIES ASC, BCHSOURC ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( SERIES = @SERIES AND BCHSOURC > @BCHSOURC OR SERIES > @SERIES ) ORDER BY SERIES ASC, BCHSOURC ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400000UN_3] TO [DYNGRP]
GO
