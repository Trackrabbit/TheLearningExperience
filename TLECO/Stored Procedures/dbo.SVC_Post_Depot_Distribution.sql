SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Post_Depot_Distribution]  (@WORECTYPE smallint,  @WORKORDNUM char(11)) As declare @PostDate datetime select @PostDate = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'   update SVC06130 set POSTED = 1,POSTEDDT = @PostDate where  WORECTYPE = @WORECTYPE and WORKORDNUM = @WORKORDNUM  and POSTED = 0  update SVC06130 set WORECTYPE = 3 where  WORECTYPE = @WORECTYPE and WORKORDNUM = @WORKORDNUM  update SVC06131 set WORECTYPE = 3 where  WORECTYPE = @WORECTYPE and WORKORDNUM = @WORKORDNUM return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Post_Depot_Distribution] TO [DYNGRP]
GO
