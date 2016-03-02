SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400000F_1] (@BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 ORDER BY BCHSOURC ASC, BACHNUMB ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY BCHSOURC ASC, BACHNUMB ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY BCHSOURC ASC, BACHNUMB ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400000F_1] TO [DYNGRP]
GO
