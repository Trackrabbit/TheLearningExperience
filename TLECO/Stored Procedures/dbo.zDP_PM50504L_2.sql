SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM50504L_2] (@TRX_ID_RS char(19), @TRX_ID_RE char(19)) AS  set nocount on IF @TRX_ID_RS IS NULL BEGIN SELECT TOP 25  PSTGDATE, VENDORID, TRXSORCE, VCHRNMBR, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, CNTRLTYP, DEX_ROW_ID FROM .PM50504 ORDER BY TRX_ID DESC, DEX_ROW_ID DESC END ELSE IF @TRX_ID_RS = @TRX_ID_RE BEGIN SELECT TOP 25  PSTGDATE, VENDORID, TRXSORCE, VCHRNMBR, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, CNTRLTYP, DEX_ROW_ID FROM .PM50504 WHERE TRX_ID = @TRX_ID_RS ORDER BY TRX_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PSTGDATE, VENDORID, TRXSORCE, VCHRNMBR, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, CNTRLTYP, DEX_ROW_ID FROM .PM50504 WHERE TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE ORDER BY TRX_ID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM50504L_2] TO [DYNGRP]
GO
