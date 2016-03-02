SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2GR03N_2] (@BS int, @EMPID_I char(15), @ENTRYNUMBER_I smallint, @DEX_ROW_ID int, @EMPID_I_RS char(15), @ENTRYNUMBER_I_RS smallint, @EMPID_I_RE char(15), @ENTRYNUMBER_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2GR03 WHERE ( EMPID_I = @EMPID_I AND ENTRYNUMBER_I = @ENTRYNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR EMPID_I = @EMPID_I AND ENTRYNUMBER_I > @ENTRYNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, ENTRYNUMBER_I ASC, DEX_ROW_ID ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2GR03 WHERE EMPID_I = @EMPID_I_RS AND ENTRYNUMBER_I BETWEEN @ENTRYNUMBER_I_RS AND @ENTRYNUMBER_I_RE AND ( EMPID_I = @EMPID_I AND ENTRYNUMBER_I = @ENTRYNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR EMPID_I = @EMPID_I AND ENTRYNUMBER_I > @ENTRYNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, ENTRYNUMBER_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2GR03 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ENTRYNUMBER_I BETWEEN @ENTRYNUMBER_I_RS AND @ENTRYNUMBER_I_RE AND ( EMPID_I = @EMPID_I AND ENTRYNUMBER_I = @ENTRYNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR EMPID_I = @EMPID_I AND ENTRYNUMBER_I > @ENTRYNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, ENTRYNUMBER_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2GR03N_2] TO [DYNGRP]
GO
