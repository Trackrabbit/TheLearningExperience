SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[dtaGetDTAIndex]   @I_iJournalEntry int  = NULL,   @O_nDTAIndex numeric(19,5) = NULL output,  @O_iErrorState int  = NULL  output as  declare  @iError int,  @iStatus int,  @cdtaIndex char(20),  @sYear smallint,  @sMonth smallint,  @sDay smallint,  @sHour    smallint,  @sMinute smallint,  @sSecond smallint,  @cDateValue char(5),  @cTimeValue char(5),  @cdate_value varchar(5),   @ctime_value varchar(5),   @dSysDate datetime  select  @O_iErrorState = 0 if @I_iJournalEntry is NULL begin  select @O_iErrorState = 21026   return end  select @dSysDate = getdate() select @sYear = datepart(year,@dSysDate) select @sMonth = datepart(month,@dSysDate) select @sDay = datepart(day,@dSysDate) select @sHour = datepart(hour,@dSysDate) select @sMinute = datepart(minute,@dSysDate) select @sSecond = datepart(second,@dSysDate) select @cdate_value =  convert(char(3),(@sMonth * 31) + @sDay) select @cDateValue =    replicate('0',3 - datalength(rtrim(@cdate_value))) +   rtrim(@cdate_value) + substring(convert(char,@sYear),3,2) select @ctime_value = convert(char,((@sHour * 3600) + (@sMinute * 60) + @sSecond)) select @cTimeValue = replicate('0',5 - datalength(rtrim(@ctime_value))) + rtrim(@ctime_value) select @cdtaIndex = rtrim(convert(char(8),@I_iJournalEntry)) +  @cTimeValue +   '.' +  @cDateValue select @O_nDTAIndex = convert(numeric(19,5),@cdtaIndex) return   
GO
GRANT EXECUTE ON  [dbo].[dtaGetDTAIndex] TO [DYNGRP]
GO
