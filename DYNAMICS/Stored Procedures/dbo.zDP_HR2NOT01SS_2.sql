SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2NOT01SS_2] (@EMPID_I char(15), @NOTESINDEX_I numeric(19,5)) AS  set nocount on SELECT TOP 1  NOTESINDEX_I, EMPID_I, APPLICANTNUMBER_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID, NOTES32000_I FROM .HR2NOT01 WHERE EMPID_I = @EMPID_I AND NOTESINDEX_I = @NOTESINDEX_I ORDER BY EMPID_I ASC, NOTESINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2NOT01SS_2] TO [DYNGRP]
GO
