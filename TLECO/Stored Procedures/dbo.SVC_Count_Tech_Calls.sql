SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE Procedure [dbo].[SVC_Count_Tech_Calls] (@Tech as char(50),  @Count integer output) As  declare @CompleteStatus char(10), @ServiceCallStatus char(10)  select @CompleteStatus = Complete_Status from SVC00998 where SEQUENCE1 = 0 select @ServiceCallStatus = SRVSTAT from SVC00998 where SEQUENCE1 = 0  select @Count = count(*) from (  select distinct CALLNBR from SVC00200   where SRVRECTYPE = 2 and TECHID = @Tech   and SRVSTAT between @ServiceCallStatus and @CompleteStatus  union   select distinct SVC00200.CALLNBR from SVC00200   inner join SVC00207 on SVC00200.SRVRECTYPE = SVC00207.SRVRECTYPE and SVC00200.CALLNBR = SVC00207.CALLNBR  where SVC00200.SRVRECTYPE = 2 and SVC00207.TECHID = @Tech   and SRVSTAT between @ServiceCallStatus and @CompleteStatus ) as A set @Count = isnull(@Count,0)  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Count_Tech_Calls] TO [DYNGRP]
GO
