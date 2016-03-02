SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[svcCalcWeeklyAmount](@StartDate datetime,   @EndDate datetime,   @TotalAmount numeric(19,2),   @WeeklyAmount numeric(19,2) output) as declare @Weeks int declare @Partial numeric(19,5) declare @EndOfFirstMonth datetime declare @EndOfLastMonth datetime declare @Days numeric(19,5) declare @DaysInWeek numeric(19,5)  select @WeeklyAmount = 0 if  @TotalAmount = 0 or  @StartDate is null or  @EndDate is null or  @StartDate >= @EndDate  return  select @Days = datediff(dd,@StartDate,@EndDate)+1  select @Weeks = @Days / 7 select @Partial = (@Days - @Weeks *7) / 7.0 select @WeeklyAmount = @TotalAmount / (@Weeks+@Partial) if @WeeklyAmount > @TotalAmount  select @WeeklyAmount =  @TotalAmount  return   
GO
GRANT EXECUTE ON  [dbo].[svcCalcWeeklyAmount] TO [DYNGRP]
GO
