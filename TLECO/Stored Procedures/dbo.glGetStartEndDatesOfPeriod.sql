SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glGetStartEndDatesOfPeriod]  @I_sYear smallint = NULL,  @I_sPeriod smallint = NULL,  @O_dPeriodStart datetime = NULL output,  @O_dPeriodEnd datetime = NULL output,  @O_iErrorState int  = NULL output  as   declare  @dMinDate datetime,  @dYearStart datetime,  @dYearEnd datetime,  @sNumberOfPeriods smallint,  @BEGINNING_BALANCE smallint,  @TRUE tinyint,  @iStatus                int  exec @iStatus = smGetMinDate @dMinDate output  select   @O_iErrorState = 0  if  @I_sYear is NULL or  @I_sPeriod is NULL begin  select   @O_iErrorState = 21069,  @O_dPeriodStart = @dMinDate,  @O_dPeriodEnd = @dMinDate   return end  select  @TRUE = 1,  @BEGINNING_BALANCE = 0  select  @sNumberOfPeriods = NUMOFPER,  @dYearStart = FSTFSCDY,  @dYearEnd = LSTFSCDY from  SY40101 where  YEAR1 = @I_sYear  if @I_sPeriod = @BEGINNING_BALANCE   select   @O_dPeriodStart = @dYearStart  - 1,  @O_dPeriodEnd = @dYearStart  - 1 else begin   select  @O_dPeriodStart = PERIODDT   from  SY40100  where  FORIGIN = @TRUE and  YEAR1 = @I_sYear and  PERIODID = @I_sPeriod   if @O_dPeriodStart is NULL   begin  select   @O_iErrorState = 21070,  @O_dPeriodStart = @dMinDate,  @O_dPeriodEnd = @dMinDate   return  end  select  @O_dPeriodEnd = PERIODDT - 1  from  SY40100  where  FORIGIN = @TRUE and  YEAR1 =   case  when @I_sPeriod = @sNumberOfPeriods then @I_sYear + 1  else @I_sYear  end and  PERIODID =   case  when @I_sPeriod = @sNumberOfPeriods then 1  else @I_sPeriod + 1  end   if @O_dPeriodEnd is NULL  select @O_dPeriodEnd = @dYearEnd end  return   
GO
GRANT EXECUTE ON  [dbo].[glGetStartEndDatesOfPeriod] TO [DYNGRP]
GO