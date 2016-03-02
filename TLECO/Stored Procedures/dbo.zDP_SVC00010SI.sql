SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00010SI] (@INTERID char(5), @SVC_Major_Release smallint, @SVC_Minor_Release smallint, @SVC_Build_Release char(3), @SVC_Install_Date datetime, @SVC_Update_Date datetime, @SVC_ServerUpd char(3), @SVC_ClientUpd char(3), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00010 (INTERID, SVC_Major_Release, SVC_Minor_Release, SVC_Build_Release, SVC_Install_Date, SVC_Update_Date, SVC_ServerUpd, SVC_ClientUpd) VALUES ( @INTERID, @SVC_Major_Release, @SVC_Minor_Release, @SVC_Build_Release, @SVC_Install_Date, @SVC_Update_Date, @SVC_ServerUpd, @SVC_ClientUpd) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00010SI] TO [DYNGRP]
GO
