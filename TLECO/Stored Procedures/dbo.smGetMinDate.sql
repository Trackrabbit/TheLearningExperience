SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetMinDate]  @O_dMinDate  datetime   = NULL output  as  declare  @dDefaultMinDate datetime  select @dDefaultMinDate = GETDATE() select @dDefaultMinDate = DATEADD(mm,-(DATEPART(mm,@dDefaultMinDate))+1,@dDefaultMinDate) select @dDefaultMinDate = DATEADD(dd,-(DATEPART(dd,@dDefaultMinDate))+1,@dDefaultMinDate) select @dDefaultMinDate = DATEADD(yy,-(DATEPART(yy,@dDefaultMinDate))+1900,@dDefaultMinDate)  select @dDefaultMinDate = DATEADD(hh,-(DATEPART(hh,@dDefaultMinDate))+0,@dDefaultMinDate) select @dDefaultMinDate = DATEADD(mi,-(DATEPART(mi,@dDefaultMinDate))+0,@dDefaultMinDate) select @dDefaultMinDate = DATEADD(ss,-(DATEPART(ss,@dDefaultMinDate))+0,@dDefaultMinDate) select @dDefaultMinDate = DATEADD(ms,-(DATEPART(ms,@dDefaultMinDate))+0,@dDefaultMinDate)  select @O_dMinDate = @dDefaultMinDate   return    
GO
GRANT EXECUTE ON  [dbo].[smGetMinDate] TO [DYNGRP]
GO
