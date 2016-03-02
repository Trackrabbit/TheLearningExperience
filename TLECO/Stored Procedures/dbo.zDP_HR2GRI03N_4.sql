SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2GRI03N_4] (@BS int, @DSCRIPTN char(31), @EMPID_I char(15), @DEX_ROW_ID int, @DSCRIPTN_RS char(31), @EMPID_I_RS char(15), @DSCRIPTN_RE char(31), @EMPID_I_RE char(15)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2GRI03 WHERE ( DSCRIPTN = @DSCRIPTN AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND EMPID_I > @EMPID_I OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2GRI03 WHERE DSCRIPTN = @DSCRIPTN_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( DSCRIPTN = @DSCRIPTN AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND EMPID_I > @EMPID_I OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2GRI03 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( DSCRIPTN = @DSCRIPTN AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN = @DSCRIPTN AND EMPID_I > @EMPID_I OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, EMPID_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2GRI03N_4] TO [DYNGRP]
GO
