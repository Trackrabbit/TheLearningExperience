SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP001L_2] (@APPINTTYPESTR_I_RS char(21), @APPINTTYPESTR_I_RE char(21)) AS  set nocount on IF @APPINTTYPESTR_I_RS IS NULL BEGIN SELECT TOP 25  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 ORDER BY APPINTTYPESTR_I DESC END ELSE IF @APPINTTYPESTR_I_RS = @APPINTTYPESTR_I_RE BEGIN SELECT TOP 25  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE APPINTTYPESTR_I = @APPINTTYPESTR_I_RS ORDER BY APPINTTYPESTR_I DESC END ELSE BEGIN SELECT TOP 25  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE APPINTTYPESTR_I BETWEEN @APPINTTYPESTR_I_RS AND @APPINTTYPESTR_I_RE ORDER BY APPINTTYPESTR_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP001L_2] TO [DYNGRP]
GO
