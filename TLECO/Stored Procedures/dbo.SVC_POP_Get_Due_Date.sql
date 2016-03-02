SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_POP_Get_Due_Date](@PaymentTerm char(20),@indate datetime output) as declare @duetype integer,  @duedays integer select @duetype=DUETYPE, @duedays = DUEDTDS from SY03300 where PYMTRMID = @PaymentTerm if @duetype = 1   BEGIN  select @indate = dateadd(day,@duedays,@indate)  END else  BEGIN  if datepart(day,@indate)>= @duedays   begin  select @indate = dateadd(day,(@duedays - datepart(day,@indate)),@indate)   select @indate = dateadd(month,1,@indate)  end  else  select @indate = dateadd(day,(@duedays - datepart(day,@indate)),@indate)  END    
GO
GRANT EXECUTE ON  [dbo].[SVC_POP_Get_Due_Date] TO [DYNGRP]
GO
