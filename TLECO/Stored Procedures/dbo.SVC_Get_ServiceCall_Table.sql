SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_ServiceCall_Table] (@RecordType smallint output,  @CallNumber char(11),  @TableType smallint output) As  if @RecordType = 0   begin  select @RecordType = SRVRECTYPE from SVC00200 where CALLNBR = @CallNumber  if @RecordType > 0   select @TableType = 1  else  begin  select @RecordType = SRVRECTYPE from SVC30200 where CALLNBR = @CallNumber  if @RecordType > 0   select @TableType = 2  else  select @TableType = 0  end  end  else  begin  if (exists(select * from SVC00200 where CALLNBR = @CallNumber))   begin  if (exists(select * from SVC00200 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber))  select @TableType = 1  else  begin  select @RecordType = SRVRECTYPE from SVC00200 where CALLNBR = @CallNumber  select @TableType = 1  end  end   else if (exists(select * from SVC30200 where CALLNBR = @CallNumber))  begin  if (exists(select * from SVC30200 where SRVRECTYPE = @RecordType and CALLNBR = @CallNumber))  select @TableType = 2  else  begin  select @RecordType = SRVRECTYPE from SVC30200 where CALLNBR = @CallNumber  select @TableType = 2  end  end  else  select @TableType = 0  end return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_ServiceCall_Table] TO [DYNGRP]
GO
