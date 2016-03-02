SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRPR012F_3] (@DSCRIPTN_RS char(31), @ITEMNUM_I_RS char(31), @DSCRIPTN_RE char(31), @ITEMNUM_I_RE char(31)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ITEMNUM_I, ISERIALNUMBER_I, DSCRIPTN, VALUE_I, CHECK1_I, DATEOUT_I, DATEIN_I, DATEDUE_I, CHANGEBY_I, CHANGEDATE_I, BOOLEANMONITOR_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRPR012 ORDER BY DSCRIPTN ASC, ITEMNUM_I ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  EMPID_I, ITEMNUM_I, ISERIALNUMBER_I, DSCRIPTN, VALUE_I, CHECK1_I, DATEOUT_I, DATEIN_I, DATEDUE_I, CHANGEBY_I, CHANGEDATE_I, BOOLEANMONITOR_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRPR012 WHERE DSCRIPTN = @DSCRIPTN_RS AND ITEMNUM_I BETWEEN @ITEMNUM_I_RS AND @ITEMNUM_I_RE ORDER BY DSCRIPTN ASC, ITEMNUM_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, ITEMNUM_I, ISERIALNUMBER_I, DSCRIPTN, VALUE_I, CHECK1_I, DATEOUT_I, DATEIN_I, DATEDUE_I, CHANGEBY_I, CHANGEDATE_I, BOOLEANMONITOR_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRPR012 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND ITEMNUM_I BETWEEN @ITEMNUM_I_RS AND @ITEMNUM_I_RE ORDER BY DSCRIPTN ASC, ITEMNUM_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRPR012F_3] TO [DYNGRP]
GO
