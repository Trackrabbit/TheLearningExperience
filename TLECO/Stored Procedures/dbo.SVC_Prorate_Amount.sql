SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Prorate_Amount](@StartDate datetime,   @EndDate datetime,   @AnnualAmount numeric(19,5),   @ProratedAmount numeric(19,5) output) as declare @WholeMonths numeric(19,5) declare @FirstPartial numeric(19,5) declare @LastPartial numeric(19,5) declare @EndOfFirstMonth datetime declare @EndOfLastMonth datetime declare @MonthlyAmount numeric(19,5) declare @Days numeric(19,5) declare @DaysInMonth numeric(19,5) declare @start datetime declare @end datetime declare @testmonths integer declare @testdate datetime select @start = @StartDate select @end = @EndDate select @testmonths = datediff(mm,@start,@end) select @start = dateadd(dd,-1,@start) select @testdate = dateadd(mm,@testmonths ,@start) if @end <> @testdate  BEGIN  select @EndOfFirstMonth = @StartDate  exec SVC_EOM @EndOfFirstMonth output   select @Days = datediff(dd,@StartDate,@EndOfFirstMonth)+1  select @DaysInMonth = datepart(dd,@EndOfFirstMonth)  select @FirstPartial = @Days / @DaysInMonth   select @EndOfLastMonth = @EndDate  exec SVC_EOM @EndOfLastMonth output   select @LastPartial = datepart(dd,@EndDate)*1.0 / datepart(dd,@EndOfLastMonth) * 1.0  select @WholeMonths = DATEDIFF(mm,@StartDate,@EndDate) - 1  select @ProratedAmount = @AnnualAmount * (@WholeMonths + @FirstPartial + @LastPartial) / 12.0  END ELSE  BEGIN  select @ProratedAmount = @AnnualAmount * @testmonths / 12.0  END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Prorate_Amount] TO [DYNGRP]
GO
