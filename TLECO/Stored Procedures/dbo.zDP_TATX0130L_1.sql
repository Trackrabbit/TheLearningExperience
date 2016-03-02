SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATX0130L_1] (@TRXSORCE_RS char(13), @TRX_I_RS int, @TRXSORCE_RE char(13), @TRX_I_RE int) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, TRX_I, DEX_ROW_ID FROM .TATX0130 ORDER BY TRXSORCE DESC, TRX_I DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, TRX_I, DEX_ROW_ID FROM .TATX0130 WHERE TRXSORCE = @TRXSORCE_RS AND TRX_I BETWEEN @TRX_I_RS AND @TRX_I_RE ORDER BY TRXSORCE DESC, TRX_I DESC END ELSE BEGIN SELECT TOP 25  TRXSORCE, TRX_I, DEX_ROW_ID FROM .TATX0130 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND TRX_I BETWEEN @TRX_I_RS AND @TRX_I_RE ORDER BY TRXSORCE DESC, TRX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATX0130L_1] TO [DYNGRP]
GO
