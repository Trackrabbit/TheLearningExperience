SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_DropJob]  (  @TaskName varchar(100)   ) As set nocount on  EXECUTE msdb.dbo.sp_delete_job @job_name=@TaskName   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_DropJob] TO [DYNGRP]
GO
