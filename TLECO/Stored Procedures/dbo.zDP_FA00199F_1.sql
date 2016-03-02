SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00199F_1] (@DATE1_RS datetime, @TIME1_RS datetime, @LOGINDEX_RS int, @DATE1_RE datetime, @TIME1_RE datetime, @LOGINDEX_RE int) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  LOGINDEX, DATE1, TIME1, Script, MsgText, DEX_ROW_ID FROM .FA00199 ORDER BY DATE1 ASC, TIME1 ASC, LOGINDEX ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  LOGINDEX, DATE1, TIME1, Script, MsgText, DEX_ROW_ID FROM .FA00199 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND LOGINDEX BETWEEN @LOGINDEX_RS AND @LOGINDEX_RE ORDER BY DATE1 ASC, TIME1 ASC, LOGINDEX ASC END ELSE BEGIN SELECT TOP 25  LOGINDEX, DATE1, TIME1, Script, MsgText, DEX_ROW_ID FROM .FA00199 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND LOGINDEX BETWEEN @LOGINDEX_RS AND @LOGINDEX_RE ORDER BY DATE1 ASC, TIME1 ASC, LOGINDEX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00199F_1] TO [DYNGRP]
GO
