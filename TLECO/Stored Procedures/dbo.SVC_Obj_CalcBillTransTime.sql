SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create Procedure [dbo].[SVC_Obj_CalcBillTransTime] ( @from_date datetime,   @from_time datetime,   @to_date datetime,     @to_time datetime,     @out_string_time char(6) output   ) as   declare @fromdatetime datetime, @todatetime datetime declare @timediff integer  declare @Hours integer declare @Minutes integer declare @HOURSTRING varchar(20), @MINUTESTRING varchar(20)  select @out_string_time = '000:00'  exec SVC_util_combine_date_time @from_date,@from_time, @fromdatetime output exec SVC_util_combine_date_time @to_date,@to_time, @todatetime output if @fromdatetime > @todatetime return (99)  select @timediff = datediff(mi, @fromdatetime, @todatetime) select @Hours = @timediff / 60 select @Minutes = @timediff - (@Hours * 60)  select @HOURSTRING =  CONVERT(varchar(3),@Hours),  @MINUTESTRING =  CONVERT(varchar(3),@Minutes)  if @Hours < 10 select @HOURSTRING = '00' + @HOURSTRING else if @Hours < 100 select @HOURSTRING = '0' + @HOURSTRING  if datalength(@MINUTESTRING) < 2 select @MINUTESTRING = '0' + @MINUTESTRING  select @out_string_time = @HOURSTRING + ':' +  @MINUTESTRING  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Obj_CalcBillTransTime] TO [DYNGRP]
GO
