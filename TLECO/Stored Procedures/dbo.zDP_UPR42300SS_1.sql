SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42300SS_1] (@ASSIGNMENTCODE char(15)) AS  set nocount on SELECT TOP 1  ASSIGNMENTCODE, DSCRIPTN, Default_CB, INACTIVE, DEX_ROW_ID FROM .UPR42300 WHERE ASSIGNMENTCODE = @ASSIGNMENTCODE ORDER BY ASSIGNMENTCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42300SS_1] TO [DYNGRP]
GO
