SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41700SS_1] (@SUPERVISORCODE_I char(7)) AS  set nocount on SELECT TOP 1  SUPERVISORCODE_I, SUPERVISOR, EMPLOYID, NOTEINDX, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR41700 WHERE SUPERVISORCODE_I = @SUPERVISORCODE_I ORDER BY SUPERVISORCODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41700SS_1] TO [DYNGRP]
GO