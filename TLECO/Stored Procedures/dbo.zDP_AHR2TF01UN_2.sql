SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2TF01UN_2] (@BS int, @EMPID_I char(15), @EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, TRANSFERREQUESTDAT_I, DESIREDCOMPANYCODE_I, DESDIVCODE_I, DESDEPTCODE_I, DESPOSCODE_I, DESSUPCODE_I, DESLOCCODE_I, EMPLOYMENTTYPE, DESIREDSHIFTCODE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TF01 WHERE ( EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, DEX_ROW_ID ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, TRANSFERREQUESTDAT_I, DESIREDCOMPANYCODE_I, DESDIVCODE_I, DESDEPTCODE_I, DESPOSCODE_I, DESSUPCODE_I, DESLOCCODE_I, EMPLOYMENTTYPE, DESIREDSHIFTCODE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TF01 WHERE EMPID_I = @EMPID_I_RS AND ( EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, TRANSFERREQUESTDAT_I, DESIREDCOMPANYCODE_I, DESDIVCODE_I, DESDEPTCODE_I, DESPOSCODE_I, DESSUPCODE_I, DESLOCCODE_I, EMPLOYMENTTYPE, DESIREDSHIFTCODE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2TF01 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2TF01UN_2] TO [DYNGRP]
GO
