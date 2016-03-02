SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30100UN_3] (@BS int, @BACHNUMB char(15), @BACHNUMB_RS char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, POSTEDDT, HISTRMVD, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, DEX_ROW_ID FROM .IV30100 WHERE ( BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, POSTEDDT, HISTRMVD, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, DEX_ROW_ID FROM .IV30100 WHERE BACHNUMB = @BACHNUMB_RS AND ( BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, POSTEDDT, HISTRMVD, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, DEX_ROW_ID FROM .IV30100 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30100UN_3] TO [DYNGRP]
GO
