SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2UN01SS_1] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .AHR2UN01 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2UN01SS_1] TO [DYNGRP]
GO
