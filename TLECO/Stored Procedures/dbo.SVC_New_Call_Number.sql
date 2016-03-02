SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_New_Call_Number]  (@newcallnbr varchar(10) OUTPUT) as declare @template char(10) declare @count int  select @template = '0000000000', @count = 1  while @count < 1000  begin  update SVC00999   set SVC00999.CALLNBR = Convert(varchar(10),(CONVERT(bigint,CALLNBR) + 1)),   @newcallnbr = CALLNBR  where SEQUENCE1 = 1  select @newcallnbr = stuff(@template,10 - LEN(ltrim(rtrim(@newcallnbr)))  + 1,LEN(ltrim(rtrim(@newcallnbr))),@newcallnbr)  if not exists(select 1 from SVC00200 where CALLNBR  = @newcallnbr) and not exists(select 1 from SVC30200 where CALLNBR  = @newcallnbr)  select @count = 1000  else  select @count = @count + 1, @newcallnbr= 'None'  end return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_New_Call_Number] TO [DYNGRP]
GO
