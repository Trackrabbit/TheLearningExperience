SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2UN01SS_3] (@UNIONNAME_I char(31), @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .AHR2UN01 WHERE UNIONNAME_I = @UNIONNAME_I AND EMPID_I = @EMPID_I ORDER BY UNIONNAME_I ASC, EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2UN01SS_3] TO [DYNGRP]
GO
