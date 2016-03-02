SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_New_Contract_Number]  (@newcallnbr varchar(10) OUTPUT) as declare @template char(10), @found tinyint, @times int  select @template = '0000000000', @found = 0, @times = 0 while @found = 0 and @times < 1000 begin  update SVC00999 with (ROWLOCK)  set SVC00999.CONTNBR = Convert(varchar(10),(CONVERT(bigint,CONTNBR) + 1)),   @newcallnbr = CONTNBR    select @newcallnbr = stuff(@template,10 - LEN(ltrim(rtrim(@newcallnbr)))  + 1,LEN(ltrim(rtrim(@newcallnbr))),@newcallnbr)  if not exists(select * from SVC00600 where CONTNBR = @newcallnbr)  select @found  =1   else  select @times = @times + 1 end  return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_New_Contract_Number] TO [DYNGRP]
GO
