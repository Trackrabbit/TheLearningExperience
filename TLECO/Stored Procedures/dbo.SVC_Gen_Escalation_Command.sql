SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Gen_Escalation_Command] (  @SrvRecType   smallint,   @CallNumber   char(11),   @LineSeq   int,  @Status   char(3),   @SrvType   char(11),  @TaskName   varchar(100),  @IncludeLineSeq  smallint,  @IncludeTaskName smallint,  @Command   varchar(100) output ) AS  declare @SqlCommand  varchar(100)  select @SrvRecType = isnull(@SrvRecType, 0),  @CallNumber = isnull(@CallNumber, ''),  @LineSeq = isnull(@LineSeq, 0),  @Status = isnull(@Status, ''),  @SrvType = isnull(@SrvType, ''),  @TaskName = substring(isnull(@TaskName, ''), 1, 99),  @IncludeLineSeq = isnull(@IncludeLineSeq, 0),  @IncludeTaskName = isnull(@IncludeTaskName, 0),  @Command = ''  select @SqlCommand = 'exec ' + ltrim(rtrim(DB_NAME())) + '..SVC_Escalate '   + ' ' + char(39) + rtrim(@CallNumber) + char(39)  + ',' + convert(char(1), @SrvRecType)   + ',' + char(39) + @Status + char(39)  + ',' + char(39) + rtrim(@SrvType) + char(39)  if (@IncludeLineSeq = 1)  select @SqlCommand = @SqlCommand + ',' + ltrim(str(@LineSeq))  if (@IncludeTaskName = 1)  select @SqlCommand = @SqlCommand + ',' + char(39) + rtrim(@TaskName) + char(39)  select @Command = @SqlCommand   
GO
GRANT EXECUTE ON  [dbo].[SVC_Gen_Escalation_Command] TO [DYNGRP]
GO
