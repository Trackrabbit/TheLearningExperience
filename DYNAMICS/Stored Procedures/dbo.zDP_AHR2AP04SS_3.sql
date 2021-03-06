SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2AP04SS_3] (@GPABASE char(3), @GPA char(5)) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2AP04 WHERE GPABASE = @GPABASE AND GPA = @GPA ORDER BY GPABASE ASC, GPA DESC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2AP04SS_3] TO [DYNGRP]
GO
