SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00210SS_1] (@EMPLOYID char(15), @ASSIGNMENTCODE char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, ASSIGNMENTCODE, INACTIVE, DEX_ROW_ID FROM .UPR00210 WHERE EMPLOYID = @EMPLOYID AND ASSIGNMENTCODE = @ASSIGNMENTCODE ORDER BY EMPLOYID ASC, ASSIGNMENTCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00210SS_1] TO [DYNGRP]
GO
