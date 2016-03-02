SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP001N_1] (@BS int, @APPINTTYPECODE_I smallint, @APPINTTYPECODE_I_RS smallint, @APPINTTYPECODE_I_RE smallint) AS  set nocount on IF @APPINTTYPECODE_I_RS IS NULL BEGIN SELECT TOP 25  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE ( APPINTTYPECODE_I > @APPINTTYPECODE_I ) ORDER BY APPINTTYPECODE_I ASC END ELSE IF @APPINTTYPECODE_I_RS = @APPINTTYPECODE_I_RE BEGIN SELECT TOP 25  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE APPINTTYPECODE_I = @APPINTTYPECODE_I_RS AND ( APPINTTYPECODE_I > @APPINTTYPECODE_I ) ORDER BY APPINTTYPECODE_I ASC END ELSE BEGIN SELECT TOP 25  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE APPINTTYPECODE_I BETWEEN @APPINTTYPECODE_I_RS AND @APPINTTYPECODE_I_RE AND ( APPINTTYPECODE_I > @APPINTTYPECODE_I ) ORDER BY APPINTTYPECODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP001N_1] TO [DYNGRP]
GO
