SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagCreateYear]  @iYear smallint = NULL,   @oReconcile tinyint  = NULL out,  @oStatus smallint = NULL out as  declare @transaction tinyint,   @dbName varchar(32),  @companyID  smallint,  @companyStatus smallint,  @rowID int,  @firstDay datetime,  @lastDay datetime,  @days smallint,  @date datetime,  @i smallint,  @dateFirst smallint,  @calWeek smallint,  @calMonth smallint,  @calQuarter smallint,  @calHalfYear smallint,  @calYear smallint,  @fiscalWeek smallint,  @fiscalPeriod smallint,  @fiscalQuarter smallint,  @fiscalHalfYear smallint,  @firstDayOfYear datetime,  @operatingPeriods smallint,  @periodsPerQuarter smallint,  @retCode int,  @perioddt datetime,  @year1 int,  @perdendt datetime  select  @transaction = 0,  @dbName = '',  @companyID = 0,  @companyStatus = 0,  @rowID = 0,  @days = 0,  @i = 0,  @dateFirst = 0,  @calWeek = 0,  @calMonth = 0,  @calQuarter = 0,  @calHalfYear = 0,  @calYear = 0,  @fiscalWeek = 0,  @fiscalPeriod = 0,  @fiscalQuarter = 0,  @fiscalHalfYear = 0,  @operatingPeriods = 0,  @periodsPerQuarter = 0,  @retCode = 0,  @oReconcile = 0,  @oStatus = 0  if (@iYear is null) begin select @oStatus = 1 return end  set dateformat dmy  select @dbName = db_name() exec @retCode = DYNAMICS.dbo.aagGetCompanyStatus @dbName, @companyID out, @companyStatus out, @oStatus out if ((@retCode <> 0) or (@oStatus <> 0)) return @retCode  select @operatingPeriods = NUMOFPER, @lastDay = LSTFSCDY from SY40101 where SY40101.YEAR1 = @iYear if (@@rowcount <> 1) begin select @oStatus = 1 return end  select @firstDay = PERIODDT from SY40100 where SY40100.YEAR1 = @iYear and SERIES = 0 and PERIODID = 1  if (@@rowcount <> 1) begin select @oStatus = 1 return end  select @firstDayOfYear = '01/01/' + convert(char(4), @iYear)  select @periodsPerQuarter = @operatingPeriods / 4  select @dateFirst = @@datefirst  if @companyStatus <> 0 begin if (@@trancount = 0) begin select @transaction = 1 begin transaction end  if exists (select * from AAG00500 where aaFiscalYear = @iYear) begin   delete from AAG00500 where aaFiscalYear = @iYear  select @oReconcile = 1 end  select @fiscalQuarter = 1  declare date_cursor CURSOR fast_forward FOR  SELECT PERIODDT,YEAR1 ,case when PERDENDT = CONVERT(datetime, '1900-01-01') then PERIODDT else PERDENDT end,PERIODID FROM SY40100  WHERE YEAR1=@iYear and FORIGIN=1 and PERIODID<>0 and  SERIES = 0 open date_cursor  fetch next from date_cursor into @perioddt,@year1,@perdendt,@fiscalPeriod  while @@fetch_status=0  begin select @date=@perioddt while (datediff(day,@date,@perdendt)>=0) begin  select @calWeek    = datepart(week, @date)  select @calMonth   = datepart(month, @date)  select @calQuarter = datepart(quarter, @date)   if @calQuarter < 3 select @calHalfYear = 1 else select @calHalfYear = 2   select @calYear = datepart(year, @date)   if @firstDay = @firstDayOfYear select @fiscalWeek = @calWeek  else if datepart(weekday, @date) = 1 select @fiscalWeek = @fiscalWeek +1   if @fiscalWeek = 0 select @fiscalWeek = 1   select @fiscalQuarter =   case   when (@fiscalPeriod <= @periodsPerQuarter * 1) then 1  when (@fiscalPeriod >  @periodsPerQuarter * 1 and @fiscalPeriod <= @periodsPerQuarter * 2) then 2  when (@fiscalPeriod >  @periodsPerQuarter * 2 and @fiscalPeriod <= @periodsPerQuarter * 3) then 3  else 4  end   select @fiscalHalfYear =   case   when (@fiscalPeriod <= @periodsPerQuarter * 2) then 1  else 2  end   exec @retCode = DYNAMICS.dbo.aagGetNextID 00500, @companyID, @rowID out, @oStatus out   if ((@retCode <> 0) or (@oStatus <> 0)) begin if (@transaction = 1) rollback transaction return @retCode end   insert AAG00500 values(@rowID, @date, @calWeek, @calMonth, @calQuarter, @calHalfYear, @calYear,  @fiscalWeek, @fiscalPeriod, @fiscalQuarter, @fiscalHalfYear, @iYear)   select @date=dateadd(day,1,@date) end fetch next from date_cursor into @perioddt,@year1,@perdendt,@fiscalPeriod end close date_cursor deallocate date_cursor if (@transaction = 1) commit transaction  return 0 END   
GO
GRANT EXECUTE ON  [dbo].[aagCreateYear] TO [DYNGRP]
GO