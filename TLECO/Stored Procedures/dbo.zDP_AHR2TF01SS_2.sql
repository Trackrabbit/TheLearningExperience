SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2TF01SS_2] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, TRANSFERREQUESTDAT_I, DESIREDCOMPANYCODE_I, DESDIVCODE_I, DESDEPTCODE_I, DESPOSCODE_I, DESSUPCODE_I, DESLOCCODE_I, EMPLOYMENTTYPE, DESIREDSHIFTCODE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TF01 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2TF01SS_2] TO [DYNGRP]
GO
