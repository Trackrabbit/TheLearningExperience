SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00010SS_1] (@INTERID char(5)) AS  set nocount on SELECT TOP 1  INTERID, SVC_Major_Release, SVC_Minor_Release, SVC_Build_Release, SVC_Install_Date, SVC_Update_Date, SVC_ServerUpd, SVC_ClientUpd, DEX_ROW_ID FROM .SVC00010 WHERE INTERID = @INTERID ORDER BY INTERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00010SS_1] TO [DYNGRP]
GO
