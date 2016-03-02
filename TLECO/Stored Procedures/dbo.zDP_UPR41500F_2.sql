SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41500F_2] (@DSCRIPTN_RS char(31), @SHFTCODE_RS char(7), @DSCRIPTN_RE char(31), @SHFTCODE_RE char(7)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  SHFTCODE, DSCRIPTN, SHFTTYPE, SHFTAMT, SHFTPCT, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR41500 ORDER BY DSCRIPTN ASC, SHFTCODE ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  SHFTCODE, DSCRIPTN, SHFTTYPE, SHFTAMT, SHFTPCT, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR41500 WHERE DSCRIPTN = @DSCRIPTN_RS AND SHFTCODE BETWEEN @SHFTCODE_RS AND @SHFTCODE_RE ORDER BY DSCRIPTN ASC, SHFTCODE ASC END ELSE BEGIN SELECT TOP 25  SHFTCODE, DSCRIPTN, SHFTTYPE, SHFTAMT, SHFTPCT, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR41500 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND SHFTCODE BETWEEN @SHFTCODE_RS AND @SHFTCODE_RE ORDER BY DSCRIPTN ASC, SHFTCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41500F_2] TO [DYNGRP]
GO