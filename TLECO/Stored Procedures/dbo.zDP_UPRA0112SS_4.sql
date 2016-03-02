SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPRA0112SS_4] (@MAJOR char(31)) AS  set nocount on SELECT TOP 1  EMPLOYID, SEQNUMBR, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPRA0112 WHERE MAJOR = @MAJOR ORDER BY MAJOR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPRA0112SS_4] TO [DYNGRP]
GO
