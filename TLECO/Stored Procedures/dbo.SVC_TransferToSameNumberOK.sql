SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_TransferToSameNumberOK]( @FromType smallint,   @ToType smallint,   @CallNumber char(11),   @OK integer output) as select @OK = 0 if @FromType = 1  begin  if not (exists(select * from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = 2)  or exists(select * from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = 3))  and @ToType <> 1   begin  if not (exists(select * from SVC30200 where CALLNBR = @CallNumber and SRVRECTYPE = 2)  or exists(select * from SVC30200 where CALLNBR = @CallNumber and SRVRECTYPE = 3))  select @OK = 1  end  end else if @FromType = 2  begin  if not (exists(select * from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = 1)  or exists(select * from SVC30200 where CALLNBR = @CallNumber and SRVRECTYPE = 1))  and @ToType = 1 select @OK = 1  end else if @FromType = 3  begin  if not (exists(select * from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = 1)  or exists(select * from SVC30200 where CALLNBR = @CallNumber and SRVRECTYPE = 1))  and @ToType = 1 select @OK = 1  end  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_TransferToSameNumberOK] TO [DYNGRP]
GO
