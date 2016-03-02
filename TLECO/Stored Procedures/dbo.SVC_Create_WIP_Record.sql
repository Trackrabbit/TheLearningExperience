SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Create_WIP_Record]   (@WORECTYPE smallint,   @WORKORDNUM char(11)) As declare @STARTDATE datetime declare @STARTTIME datetime declare @TECHID char(11) declare @Route_Sequence numeric(19,5) declare @Status smallint BEGIN TRANSACTION   select   @STARTDATE = STRTDATE,  @STARTTIME = STRTTIME,  @TECHID = TECHID,  @Route_Sequence = Route_Sequence,  @Status = Status  from   SVC06103  where  WORECTYPE = @WORECTYPE and  WORKORDNUM = @WORKORDNUM  update SVC06105  set   STRTDATE = @STARTTIME,  STRTTIME = @STARTTIME,  TECHID = @TECHID,  Status = 2  where  WORECTYPE = @WORECTYPE and  WORKORDNUM = @WORKORDNUM and  SEQUENCE1 = @Route_Sequence and  Status = @Status COMMIT TRANSACTION  exec SVC_Schedule_Work_Order @WORECTYPE,@WORKORDNUM,@Route_Sequence,2 return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_WIP_Record] TO [DYNGRP]
GO
