SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV50502F_2] (@TRX_ID_RS char(19), @TRX_ID_RE char(19)) AS  set nocount on IF @TRX_ID_RS IS NULL BEGIN SELECT TOP 25  POSTEDDT, JRNENTRY, DOCNUMBR, DOCTYPE, TRXSORCE, STRVAL, TRX_ID, EXTDCOST, DEX_ROW_ID FROM .IV50502 ORDER BY TRX_ID ASC, DEX_ROW_ID ASC END ELSE IF @TRX_ID_RS = @TRX_ID_RE BEGIN SELECT TOP 25  POSTEDDT, JRNENTRY, DOCNUMBR, DOCTYPE, TRXSORCE, STRVAL, TRX_ID, EXTDCOST, DEX_ROW_ID FROM .IV50502 WHERE TRX_ID = @TRX_ID_RS ORDER BY TRX_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  POSTEDDT, JRNENTRY, DOCNUMBR, DOCTYPE, TRXSORCE, STRVAL, TRX_ID, EXTDCOST, DEX_ROW_ID FROM .IV50502 WHERE TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE ORDER BY TRX_ID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV50502F_2] TO [DYNGRP]
GO
