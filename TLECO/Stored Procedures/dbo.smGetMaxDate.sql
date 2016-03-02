SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetMaxDate]  @O_dMaxDate  datetime   = NULL output  as  declare  @dDefaultMaxDate datetime  select @dDefaultMaxDate = GETDATE()  select @dDefaultMaxDate = DATEADD(mm,12-DATEPART(mm,@dDefaultMaxDate),@dDefaultMaxDate) select @dDefaultMaxDate = DATEADD(dd,31-DATEPART(dd,@dDefaultMaxDate),@dDefaultMaxDate) select @dDefaultMaxDate = DATEADD(yy,9999-DATEPART(yy,@dDefaultMaxDate),@dDefaultMaxDate)  select @dDefaultMaxDate = DATEADD(hh,23-DATEPART(hh,@dDefaultMaxDate),@dDefaultMaxDate) select @dDefaultMaxDate = DATEADD(mi,59-DATEPART(mi,@dDefaultMaxDate),@dDefaultMaxDate) select @dDefaultMaxDate = DATEADD(ss,59-DATEPART(ss,@dDefaultMaxDate),@dDefaultMaxDate)  select @O_dMaxDate = @dDefaultMaxDate   return    
GO
GRANT EXECUTE ON  [dbo].[smGetMaxDate] TO [DYNGRP]
GO
