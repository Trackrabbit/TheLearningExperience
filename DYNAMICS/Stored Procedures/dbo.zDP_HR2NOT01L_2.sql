SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2NOT01L_2] (@EMPID_I_RS char(15), @NOTESINDEX_I_RS numeric(19,5), @EMPID_I_RE char(15), @NOTESINDEX_I_RE numeric(19,5)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .HR2NOT01 ORDER BY EMPID_I DESC, NOTESINDEX_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .HR2NOT01 WHERE EMPID_I = @EMPID_I_RS AND NOTESINDEX_I BETWEEN @NOTESINDEX_I_RS AND @NOTESINDEX_I_RE ORDER BY EMPID_I DESC, NOTESINDEX_I DESC END ELSE BEGIN SELECT TOP 25  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .HR2NOT01 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND NOTESINDEX_I BETWEEN @NOTESINDEX_I_RS AND @NOTESINDEX_I_RE ORDER BY EMPID_I DESC, NOTESINDEX_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2NOT01L_2] TO [DYNGRP]
GO
