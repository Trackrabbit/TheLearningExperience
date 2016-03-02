SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30100L_4] (@POSTEDDT_RS datetime, @POSTEDDT_RE datetime) AS  set nocount on IF @POSTEDDT_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, POSTEDDT, HISTRMVD, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, DEX_ROW_ID FROM .IV30100 ORDER BY POSTEDDT DESC, DEX_ROW_ID DESC END ELSE IF @POSTEDDT_RS = @POSTEDDT_RE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, POSTEDDT, HISTRMVD, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, DEX_ROW_ID FROM .IV30100 WHERE POSTEDDT = @POSTEDDT_RS ORDER BY POSTEDDT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BCHSOURC, BACHNUMB, BCHCOMNT, BACHFREQ, POSTEDDT, HISTRMVD, BCHTOTAL, CNTRLTOT, NUMOFTRX, CNTRLTRX, DEX_ROW_ID FROM .IV30100 WHERE POSTEDDT BETWEEN @POSTEDDT_RS AND @POSTEDDT_RE ORDER BY POSTEDDT DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30100L_4] TO [DYNGRP]
GO
