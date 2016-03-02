SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Calc_Monthly_Amount](@StartDate datetime,   @EndDate datetime,   @TotalAmount numeric(19,2),   @MonthlyAmount numeric(19,5) output) as declare @WholeMonths numeric(19,5) declare @FirstPartial numeric(19,5) declare @LastPartial numeric(19,5) declare @EndOfFirstMonth datetime declare @EndOfLastMonth datetime declare @Days numeric(19,5) declare @DaysInMonth numeric(19,5) set nocount on select @EndOfFirstMonth = @StartDate exec SVC_EOM @EndOfFirstMonth output  select @Days = datediff(dd,@StartDate,@EndOfFirstMonth)+1 select @DaysInMonth = datepart(dd,@EndOfFirstMonth) select @FirstPartial = @Days / @DaysInMonth select @EndOfLastMonth = @EndDate exec SVC_EOM @EndOfLastMonth output  select @LastPartial = datepart(dd,@EndDate)*1.0 / datepart(dd,@EndOfLastMonth)*1.0 if (datepart(dd,@EndDate)+1 = datepart(dd,@StartDate)) and datepart(dd,@StartDate) <> 1  select @LastPartial = 1 - @FirstPartial  select @WholeMonths = DATEDIFF(mm,@StartDate,@EndDate) - 1 select @MonthlyAmount = @TotalAmount / (@WholeMonths + @FirstPartial + @LastPartial)  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Calc_Monthly_Amount] TO [DYNGRP]
GO
