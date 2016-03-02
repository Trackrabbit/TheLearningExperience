SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400000N_2] (@BS int, @BACHNUMB char(15), @DEX_ROW_ID int, @BACHNUMB_RS char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE ( BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE BACHNUMB = @BACHNUMB_RS AND ( BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BACHNUMB = @BACHNUMB AND DEX_ROW_ID > @DEX_ROW_ID OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400000N_2] TO [DYNGRP]
GO
