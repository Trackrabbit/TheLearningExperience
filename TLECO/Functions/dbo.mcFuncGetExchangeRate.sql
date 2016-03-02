SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[mcFuncGetExchangeRate]  (  @I_PostDate datetime = NULL,  @I_ExchangeTableID char(15) = NULL,  @I_TrxDateDefault smallint = NULL,  @I_DateLimits smallint = NULL,  @I_PrevDaysLimit smallint = NULL,  @I_BaseExchRateOn smallint = NULL,  @I_MCTRXSTT tinyint  = NULL,  @CurrencyTranslationType smallint =NULL  )  RETURNS numeric(19,7) AS  BEGIN  declare @O_ExchangeRate numeric(19,7)  declare @I_tEuroEnabled tinyint  declare @AverageCalculationMethod smallint,  @Cur_ExchangeRate numeric(19,7),   @NumberOfDays smallint,  @NumberOfDaysInMonth smallint,   @LastDayofMonth datetime,  @firstDayofMonth datetime,  @PreviousOrNextDate datetime,  @Record_Increment int,     @NumberofRowSelected int,     @EXGTBLID char(15),  @CurrencyDecimalPlaces int,  @EXCHDATE datetime,  @XRate_Date datetime,  @Days_diff integer   select  @Cur_ExchangeRate=0,  @NumberOfDays=0,  @LastDayofMonth='',  @firstDayofMonth='',  @PreviousOrNextDate='',  @NumberofRowSelected=0,  @CurrencyDecimalPlaces=0,  @EXCHDATE=0  select @AverageCalculationMethod = AVGCLMD from MC40000              select @CurrencyDecimalPlaces= 7                  set  @Record_Increment =1  set  @firstDayofMonth = DATEADD(MONTH, DATEDIFF(MONTH, 0, @I_PostDate), 0)  set  @LastDayofMonth=(DATEADD(dd, -DAY(DATEADD(m,1,@I_PostDate)), DATEADD(m,1,@I_PostDate)))   set  @NumberOfDaysInMonth= abs(DATEDIFF(day,@firstDayofMonth,@LastDayofMonth))+1      set  @PreviousOrNextDate = @firstDayofMonth                if @I_MCTRXSTT=0   select @I_tEuroEnabled=0  else   select @I_tEuroEnabled=1    if @I_tEuroEnabled=1 and @I_ExchangeTableID=''  begin  select @O_ExchangeRate = isnull(@O_ExchangeRate,0)  return(@O_ExchangeRate)  end   if ((@CurrencyTranslationType <> 1) or (@CurrencyTranslationType=1 and @AverageCalculationMethod=1) )   BEGIN   select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE = @I_PostDate  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')   select @O_ExchangeRate = isnull(@O_ExchangeRate,0)  if @O_ExchangeRate<>0  return(@O_ExchangeRate)   if @I_TrxDateDefault=0   return(@O_ExchangeRate)   if ((@I_TrxDateDefault = 1) and (@I_DateLimits = 1))   begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE <= @I_PostDate   and abs(datediff(day, EXCHDATE, @I_PostDate)) <= @I_PrevDaysLimit  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE desc,TIME1 desc  select @O_ExchangeRate = isnull(@O_ExchangeRate,0)   if (@O_ExchangeRate = 0)   begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE >= @I_PostDate  and abs(datediff(day, EXCHDATE, @I_PostDate)) <= @I_PrevDaysLimit  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE,TIME1   end  end  else   if ((@I_TrxDateDefault = 1) and (@I_DateLimits = 0))   begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE <= @I_PostDate  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE desc,TIME1 desc  select @O_ExchangeRate = isnull(@O_ExchangeRate,0)   if (@O_ExchangeRate = 0)   begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE >= @I_PostDate  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE,TIME1  end  end  else   if ((@I_TrxDateDefault = 2) and (@I_DateLimits = 1))   begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE >= @I_PostDate  and abs(datediff(day, EXCHDATE, @I_PostDate)) <= @I_PrevDaysLimit  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE,TIME1   select @O_ExchangeRate = isnull(@O_ExchangeRate,0)   if (@O_ExchangeRate = 0)    begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE <= @I_PostDate  and abs(datediff(day, EXCHDATE, @I_PostDate)) <= @I_PrevDaysLimit  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE desc,TIME1 desc  end  end  else  if ((@I_TrxDateDefault = 2) and (@I_DateLimits = 0))   begin   select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)   where EXGTBLID = @I_ExchangeTableID   and EXCHDATE >= @I_PostDate  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')   order by EXCHDATE,TIME1   select @O_ExchangeRate = isnull(@O_ExchangeRate,0)   if (@O_ExchangeRate = 0)    begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE <= @I_PostDate  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE desc,TIME1 desc  end  end  else   begin  select top 1 @O_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @I_ExchangeTableID  and EXCHDATE = @I_PostDate  and (EXPNDATE >= @I_PostDate or EXPNDATE = '')  order by EXCHDATE desc,TIME1 desc  end   select @O_ExchangeRate = isnull(@O_ExchangeRate,0)  END  ELSE  BEGIN  if  (@AverageCalculationMethod=2)  BEGIN  select @O_ExchangeRate=isnull(sum(XCHGRATE),0),@NumberofRowSelected=COUNT(1) from DYNAMICS..MC00100 a (nolock)   where a.EXGTBLID=@I_ExchangeTableID   and a.EXCHDATE between @firstDayofMonth and @LastDayofMonth   and a.TIME1 = (select  MAX(TIME1)from DYNAMICS..MC00100 where EXGTBLID=a.EXGTBLID and EXCHDATE=a.EXCHDATE )   IF @O_ExchangeRate=0  set @O_ExchangeRate=1  Else  set @O_ExchangeRate = @O_ExchangeRate/@NumberofRowSelected  END  ELSE  BEGIN  IF @I_TrxDateDefault=0  BEGIN  select @O_ExchangeRate=isnull(SUM(XCHGRATE),0),@NumberofRowSelected=COUNT(1) from DYNAMICS..MC00100 a (nolock)   where a.EXGTBLID=@I_ExchangeTableID   and a.EXCHDATE between @firstDayofMonth and @LastDayofMonth   and a.TIME1 = (select  MAX(TIME1)from DYNAMICS..MC00100 where EXGTBLID=a.EXGTBLID and EXCHDATE=a.EXCHDATE )   set @O_ExchangeRate=(@O_ExchangeRate+(@NumberOfDaysInMonth-@NumberofRowSelected))/@NumberOfDaysInMonth  END  IF ((@I_TrxDateDefault = 1) and (@I_DateLimits = 1))  BEGIN  Declare Rate_Day_Average_Prev_limi_Cur Cursor STATIC for  select distinct  EXCHDATE,EXGTBLID from DYNAMICS..MC00100 (nolock)where EXGTBLID=@I_ExchangeTableID   and EXCHDATE between @firstDayofMonth and @LastDayofMonth order by EXCHDATE  OPEN Rate_Day_Average_Prev_limi_Cur  FETCH NEXT FROM Rate_Day_Average_Prev_limi_Cur INTO @EXCHDATE,@EXGTBLID  set @NumberofRowSelected = @@CURSOR_ROWS  while  @@FETCH_STATUS = 0   BEGIN   IF ((@NumberofRowSelected <> @Record_Increment) or (@LastDayofMonth = @EXCHDATE))  BEGIN   IF  ((@firstDayofMonth <> @EXCHDATE) or (@LastDayofMonth = @EXCHDATE))  BEGIN  IF @Record_Increment > 1 or (@LastDayofMonth = @EXCHDATE and @Record_Increment > 1)  BEGIN  select top 1 @Cur_ExchangeRate= XCHGRATE from DYNAMICS..MC00100(nolock)  where EXGTBLID = @EXGTBLID and EXCHDATE < @EXCHDATE   order by EXCHDATE desc,TIME1 desc  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate =0  set @Cur_ExchangeRate=1   set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))  IF @NumberOfDays>@I_PrevDaysLimit  BEGIN  set @NumberOfDays=(@NumberOfDays-@I_PrevDaysLimit)-1  if @NumberOfDays<0  set @NumberOfDays=0   set @O_ExchangeRate += ((@Cur_ExchangeRate*(@I_PrevDaysLimit+1))+@NumberOfDays)   END  ELSE IF @NumberOfDays<=@I_PrevDaysLimit  BEGIN  IF @NumberOfDays >0  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  END  set @PreviousOrNextDate=@EXCHDATE  set @Record_Increment +=1   IF @LastDayofMonth = @EXCHDATE   BEGIN  select top 1 @Cur_ExchangeRate= XCHGRATE from DYNAMICS..MC00100(nolock)  where EXGTBLID = @EXGTBLID and EXCHDATE = @LastDayofMonth                        order by EXCHDATE desc,TIME1 desc  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate =0  set @Cur_ExchangeRate=1   set @O_ExchangeRate += @Cur_ExchangeRate  END  END  ELSE IF @Record_Increment = 1 OR (@LastDayofMonth = @EXCHDATE and @Record_Increment = 1)  BEGIN  select top 1 @Cur_ExchangeRate= XCHGRATE,@XRate_Date= EXCHDATE  from DYNAMICS..MC00100(nolock)  where EXGTBLID = @EXGTBLID and EXCHDATE < @EXCHDATE order by EXCHDATE desc,TIME1 desc   select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0),  @XRate_Date=isnull(@XRate_Date,'')  set @NumberOfDays=abs(DATEDIFF(day,@XRate_Date,@EXCHDATE))   IF  @Cur_ExchangeRate =0  set @O_ExchangeRate += @NumberOfDays  ELSE  BEGIN  set @Days_diff=abs(DATEDIFF(day,@XRate_Date,@PreviousOrNextDate))  IF @Days_diff<=@I_PrevDaysLimit  BEGIN  IF @Days_diff=1 and @NumberOfDays<=@I_PrevDaysLimit  BEGIN  set @NumberOfDays= @NumberOfDays-@Days_diff  set @O_ExchangeRate += @Cur_ExchangeRate*(@NumberOfDays)  END  ELSE  BEGIN  set @NumberOfDays= @NumberOfDays-@I_PrevDaysLimit  set @Days_diff=(@I_PrevDaysLimit-@Days_diff)+1  if  @NumberOfDays<0  set @NumberOfDays=0  set @O_ExchangeRate += ((@Cur_ExchangeRate*@Days_diff)+@NumberOfDays-1)  END   END  ELSE IF @Days_diff > @I_PrevDaysLimit                                set @O_ExchangeRate += @NumberOfDays  End  IF @LastDayofMonth = @EXCHDATE   BEGIN  select top 1 @Cur_ExchangeRate= XCHGRATE from DYNAMICS..MC00100(nolock)  where EXGTBLID = @EXGTBLID and EXCHDATE = @LastDayofMonth                        order by EXCHDATE desc,TIME1 desc  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate =0  set @Cur_ExchangeRate=1   set @O_ExchangeRate += @Cur_ExchangeRate  END  set @PreviousOrNextDate=@EXCHDATE   set @Record_Increment +=1  END  END   ELSE IF (@firstDayofMonth = @EXCHDATE)  set @Record_Increment +=1  END   ELSE IF @Record_Increment = @NumberofRowSelected  BEGIN   select top 1 @Cur_ExchangeRate = XCHGRATE from DYNAMICS..MC00100 (nolock) where   EXGTBLID = @EXGTBLID and EXCHDATE < @EXCHDATE   order by EXCHDATE desc,TIME1 desc  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)   IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @NumberOfDays=DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE)  IF @NumberOfDays>@I_PrevDaysLimit  BEGIN  set @NumberOfDays=(@NumberOfDays-@I_PrevDaysLimit)-1  IF @NumberOfDays<0  set @NumberOfDays=0  IF @NumberofRowSelected=1  BEGIN  set @NumberOfDays+=1  set @Days_diff=@I_PrevDaysLimit  END  ELSE  set @Days_diff=@I_PrevDaysLimit+1  set @O_ExchangeRate += ((@Cur_ExchangeRate*@Days_diff)+@NumberOfDays)   END  ELSE IF @NumberOfDays<=@I_PrevDaysLimit  BEGIN   IF @NumberOfDays >0  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  END  set @PreviousOrNextDate=@EXCHDATE  set @Cur_ExchangeRate =0   select top 1 @Cur_ExchangeRate = XCHGRATE  from DYNAMICS..MC00100 (nolock) where EXGTBLID = @EXGTBLID and   EXCHDATE < @LastDayofMonth   order by EXCHDATE desc,TIME1 desc  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @NumberOfDays=DATEDIFF(day,@PreviousOrNextDate,@LastDayofMonth)+1  IF @NumberOfDays>@I_PrevDaysLimit  BEGIN   set @Days_diff=(@NumberOfDays-@I_PrevDaysLimit)-1  if @Days_diff<0  set @Days_diff=0   set @O_ExchangeRate += ((@Cur_ExchangeRate*(@I_PrevDaysLimit+1))+@Days_diff)   END  ELSE IF @NumberOfDays<=@I_PrevDaysLimit  BEGIN  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  END   END   set @Cur_ExchangeRate=0   FETCH NEXT FROM Rate_Day_Average_Prev_limi_Cur INTO @EXCHDATE,@EXGTBLID   END  CLOSE Rate_Day_Average_Prev_limi_Cur  DEALLOCATE Rate_Day_Average_Prev_limi_Cur   IF @NumberofRowSelected<>0  set @O_ExchangeRate=@O_ExchangeRate/@NumberOfDaysInMonth  ELSE  BEGIN  select top 1 @Cur_ExchangeRate= XCHGRATE,@XRate_Date= EXCHDATE  from DYNAMICS..MC00100(nolock)  where EXGTBLID = @I_ExchangeTableID and EXCHDATE < @PreviousOrNextDate order by EXCHDATE desc,TIME1 desc   select  @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)   IF   @Cur_ExchangeRate=0   set @O_ExchangeRate = 1   ELSE  BEGIN  set @Days_diff=abs(DATEDIFF(day,@XRate_Date,@PreviousOrNextDate))  set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@LastDayofMonth))  IF @Days_diff<=@I_PrevDaysLimit  BEGIN  set @Days_diff=(@I_PrevDaysLimit-@Days_diff)  Set @NumberOfDays=(@NumberOfDays-@Days_diff)  if  @NumberOfDays<0  set @NumberOfDays=0  set @O_ExchangeRate += ((@Cur_ExchangeRate*(@Days_diff+1))+@NumberOfDays)  set @O_ExchangeRate=@O_ExchangeRate/@NumberOfDaysInMonth  END  ELSE   set @O_ExchangeRate = 1   END  END  END  ELSE IF ((@I_TrxDateDefault = 1) and (@I_DateLimits = 0))    BEGIN  Declare Rate_Days_Average_Prev_Cur Cursor STATIC for  select distinct  EXCHDATE,EXGTBLID from DYNAMICS..MC00100 where EXGTBLID=@I_ExchangeTableID   and EXCHDATE between @firstDayofMonth and @LastDayofMonth order by EXCHDATE  OPEN Rate_Days_Average_Prev_Cur  FETCH NEXT FROM Rate_Days_Average_Prev_Cur INTO @EXCHDATE,@EXGTBLID  set @NumberofRowSelected = @@CURSOR_ROWS  while  @@FETCH_STATUS = 0   BEGIN   IF ((@NumberofRowSelected <> @Record_Increment) or (@LastDayofMonth = @EXCHDATE))  BEGIN   IF  ((@firstDayofMonth <> @EXCHDATE) or (@LastDayofMonth = @EXCHDATE))  BEGIN  select top 1 @Cur_ExchangeRate= isnull(XCHGRATE,0) from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @EXGTBLID   and EXCHDATE < @EXCHDATE order by EXCHDATE desc,TIME1 desc  set @NumberOfDays = abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))  IF  @Cur_ExchangeRate =0  set @Cur_ExchangeRate=1   set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  set @PreviousOrNextDate=@EXCHDATE  set @Record_Increment +=1  IF @LastDayofMonth = @EXCHDATE  BEGIN  select top 1 @Cur_ExchangeRate= isnull(XCHGRATE,0) from DYNAMICS..MC00100(nolock)  where EXGTBLID = @EXGTBLID   and EXCHDATE = @LastDayofMonth  order by EXCHDATE desc,TIME1 desc  IF  @Cur_ExchangeRate =0  set @Cur_ExchangeRate=1   set @O_ExchangeRate += @Cur_ExchangeRate  END  END   ELSE IF (@firstDayofMonth = @EXCHDATE)  BEGIN   set @Record_Increment +=1  END   END   ELSE  IF @Record_Increment = @NumberofRowSelected  BEGIN  select top 1 @Cur_ExchangeRate = isnull(XCHGRATE,0) from DYNAMICS..MC00100 (nolock)   where EXGTBLID = @EXGTBLID   and EXCHDATE < @EXCHDATE order by EXCHDATE desc,TIME1 desc  IF @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))   set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  set @PreviousOrNextDate=@EXCHDATE   select top 1 @Cur_ExchangeRate = isnull(XCHGRATE,0) from DYNAMICS..MC00100 (nolock)   where EXGTBLID = @EXGTBLID   and EXCHDATE < @LastDayofMonth order by EXCHDATE desc,TIME1 desc  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @NumberOfDays=DATEDIFF(day,@PreviousOrNextDate,@LastDayofMonth)+1   set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  End   set @Cur_ExchangeRate=0   FETCH NEXT FROM Rate_Days_Average_Prev_Cur INTO @EXCHDATE,@EXGTBLID   END  close Rate_Days_Average_Prev_Cur  DEALLOCATE Rate_Days_Average_Prev_Cur   IF @NumberofRowSelected<>0  set @O_ExchangeRate=@O_ExchangeRate/@NumberOfDaysInMonth  ELSE  BEGIN  select top 1 @O_ExchangeRate= isnull(XCHGRATE,0) from DYNAMICS..MC00100(nolock)  where EXGTBLID = @I_ExchangeTableID and EXCHDATE <= @LastDayofMonth   order by EXCHDATE desc,TIME1 desc  IF  @O_ExchangeRate=0  set @O_ExchangeRate=1   END  END  ELSE IF ((@I_TrxDateDefault = 2) and (@I_DateLimits = 1))  BEGIN  Declare Rate_Days_Average_NextDate_Limit_Cur Cursor STATIC for  select distinct  EXCHDATE,EXGTBLID from DYNAMICS..MC00100 (nolock) where EXGTBLID=@I_ExchangeTableID and   EXCHDATE between @firstDayofMonth and @LastDayofMonth order by EXCHDATE  OPEN Rate_Days_Average_NextDate_Limit_Cur  FETCH NEXT FROM Rate_Days_Average_NextDate_Limit_Cur INTO @EXCHDATE,@EXGTBLID  set @NumberofRowSelected = @@CURSOR_ROWS  while  @@FETCH_STATUS = 0   BEGIN   IF ((@NumberofRowSelected <> @Record_Increment) or (@LastDayofMonth = @EXCHDATE))  BEGIN   IF  ((@firstDayofMonth <> @EXCHDATE) or (@LastDayofMonth = @EXCHDATE))  BEGIN  IF (@Record_Increment> 1 or @LastDayofMonth = @EXCHDATE)  BEGIN  select Top 1 @Cur_ExchangeRate=XCHGRATE from DYNAMICS..MC00100 a (nolock)where   EXGTBLID = @EXGTBLID and   EXCHDATE > @PreviousOrNextDate   and TIME1 = (select  top 1 max(TIME1)   from DYNAMICS..MC00100 where EXGTBLID=@EXGTBLID and EXCHDATE = a.EXCHDATE)   order by EXCHDATE,TIME1  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1  set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))  IF @NumberOfDays>@I_PrevDaysLimit  BEGIN  set @NumberOfDays=(@NumberOfDays-@I_PrevDaysLimit)  if @LastDayofMonth <> @EXCHDATE  set @NumberOfDays -=1   if @NumberOfDays<0  set @NumberOfDays=0   set @O_ExchangeRate += ((@Cur_ExchangeRate*(@I_PrevDaysLimit+1))+@NumberOfDays)   END  ELSE if @NumberOfDays<=@I_PrevDaysLimit  BEGIN  IF @NumberOfDays >0  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  END   set @PreviousOrNextDate=@EXCHDATE   set @Record_Increment +=1  END  ELSE IF(@Record_Increment = 1)  BEGIN  select Top 1 @Cur_ExchangeRate=XCHGRATE   from DYNAMICS..MC00100 a (nolock)where EXGTBLID = @EXGTBLID and   EXCHDATE > @firstDayofMonth   and TIME1 = (select  top 1 max(TIME1)   from DYNAMICS..MC00100 where EXGTBLID=@EXGTBLID and EXCHDATE = a.EXCHDATE)   order by EXCHDATE,TIME1  select @Cur_ExchangeRate=ISNULL(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1  set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))+1  IF @NumberOfDays>@I_PrevDaysLimit  BEGIN  set @NumberOfDays=(@NumberOfDays-@I_PrevDaysLimit)-1   IF @NumberOfDays<0  set @NumberOfDays=0   set @O_ExchangeRate += ((@Cur_ExchangeRate*(@I_PrevDaysLimit+1))+@NumberOfDays)   END  ELSE IF @NumberOfDays<=@I_PrevDaysLimit  BEGIN  IF @NumberOfDays >0  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  END   set @PreviousOrNextDate=@EXCHDATE   set @Record_Increment +=1  END   END   ELSE IF(@firstDayofMonth = @EXCHDATE)  BEGIN   select Top 1 @Cur_ExchangeRate= XCHGRATE   from DYNAMICS..MC00100 (nolock) where EXGTBLID = @EXGTBLID and EXCHDATE=@EXCHDATE   order by TIME1 desc,EXCHDATE desc   select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)                        if @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @O_ExchangeRate =@Cur_ExchangeRate   set @Record_Increment +=1  END   END   ELSE IF @Record_Increment = @NumberofRowSelected  BEGIN  select Top 1 @Cur_ExchangeRate=XCHGRATE from DYNAMICS..MC00100 a (nolock)where   EXGTBLID = @EXGTBLID and   EXCHDATE > @PreviousOrNextDate   and TIME1 = (select  top 1 max(TIME1)   from DYNAMICS..MC00100 where EXGTBLID=@EXGTBLID and EXCHDATE = a.EXCHDATE)   order by EXCHDATE,TIME1  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1  set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))  IF @NumberOfDays>@I_PrevDaysLimit  BEGIN  set @NumberOfDays=(@NumberOfDays-@I_PrevDaysLimit)  IF @NumberofRowSelected>1  set @NumberOfDays-=1  IF @NumberOfDays<0  set @NumberOfDays=0   set @O_ExchangeRate += ((@Cur_ExchangeRate*(@I_PrevDaysLimit+1))+@NumberOfDays)   END  ELSE IF @NumberOfDays<=@I_PrevDaysLimit  BEGIN  IF @NumberofRowSelected=1 and @firstDayofMonth <> @EXCHDATE   set @NumberOfDays+=1  IF @NumberOfDays >0  set @O_ExchangeRate += @Cur_ExchangeRate*(@NumberOfDays)  END   IF(@firstDayofMonth = @EXCHDATE)  BEGIN   select Top 1 @Cur_ExchangeRate= XCHGRATE   from DYNAMICS..MC00100 (nolock) where EXGTBLID = @EXGTBLID and EXCHDATE=@EXCHDATE   order by TIME1 desc,EXCHDATE desc   select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0)                        IF @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @O_ExchangeRate =@Cur_ExchangeRate   END   set @Cur_ExchangeRate=0   select top 1  @Cur_ExchangeRate= XCHGRATE ,@XRate_Date = EXCHDATE  from DYNAMICS..MC00100 a (nolock) where EXGTBLID = @EXGTBLID and EXCHDATE > @EXCHDATE   and TIME1 = (select  top 1 max(TIME1)from DYNAMICS..MC00100 where EXGTBLID=@EXGTBLID and   EXCHDATE = a.EXCHDATE)order by EXCHDATE,TIME1  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0),  @XRate_Date=isnull(@XRate_Date,0)  set @NumberOfDays=abs(DATEDIFF(day,@LastDayofMonth,@EXCHDATE))   IF  @Cur_ExchangeRate =0  set @O_ExchangeRate += @NumberOfDays  ELSE  BEGIN  set @Days_diff=abs(DATEDIFF(day,@XRate_Date,@LastDayofMonth))  IF @Days_diff<=@I_PrevDaysLimit  BEGIN  if @NumberOfDays<=@I_PrevDaysLimit and @I_PrevDaysLimit>(@NumberOfDays+@Days_diff)  set @O_ExchangeRate += (@Cur_ExchangeRate*@NumberOfDays)  ELSE  BEGIN  set @Days_diff=(@I_PrevDaysLimit-@Days_diff)  Set @NumberOfDays=(@NumberOfDays-@Days_diff)  IF @NumberofRowSelected=1  BEGIN  set @Days_diff +=1   set @NumberOfDays-=1  END  if  @NumberOfDays<0  set @NumberOfDays=0  set @O_ExchangeRate += ((@Cur_ExchangeRate*@Days_diff)+@NumberOfDays)  END  END  ELSE IF @Days_diff> @I_PrevDaysLimit                                set @O_ExchangeRate += @NumberOfDays  END  END   set @Cur_ExchangeRate=0   FETCH NEXT FROM Rate_Days_Average_NextDate_Limit_Cur INTO @EXCHDATE,@EXGTBLID   END  CLOSE Rate_Days_Average_NextDate_Limit_Cur  DEALLOCATE Rate_Days_Average_NextDate_Limit_Cur  IF @NumberofRowSelected<>0   set @O_ExchangeRate=@O_ExchangeRate/@NumberOfDaysInMonth  ELSE  BEGIN  select Top 1 @Cur_ExchangeRate= XCHGRATE,@XRate_Date=EXCHDATE from DYNAMICS..MC00100 a (nolock)where   EXGTBLID = @I_ExchangeTableID and   EXCHDATE > @LastDayofMonth   and TIME1 = (select  top 1 max(TIME1)   from DYNAMICS..MC00100 where EXGTBLID = @I_ExchangeTableID and EXCHDATE = a.EXCHDATE)   order by EXCHDATE,TIME1  select @Cur_ExchangeRate=isnull(@Cur_ExchangeRate,0),  @XRate_Date=isnull(@XRate_Date,'')  IF  @Cur_ExchangeRate =0  set @O_ExchangeRate = @NumberOfDays  ELSE  BEGIN  set @Days_diff=abs(DATEDIFF(day,@XRate_Date,@LastDayofMonth))  set @NumberOfDays=abs(DATEDIFF(day,@firstDayofMonth,@LastDayofMonth))  IF @Days_diff<=@I_PrevDaysLimit  BEGIN  set @Days_diff=(@I_PrevDaysLimit-@Days_diff)  Set @NumberOfDays=(@NumberOfDays-@Days_diff)  IF  @NumberOfDays<0  set @NumberOfDays=0  set @Days_diff +=1  set @O_ExchangeRate += ((@Cur_ExchangeRate*@Days_diff))+@NumberOfDays  set @O_ExchangeRate=@O_ExchangeRate/@NumberOfDaysInMonth  END  ELSE IF @Days_diff> @I_PrevDaysLimit                                set @O_ExchangeRate=1  END  END  END  ELSE IF ((@I_TrxDateDefault = 2) and (@I_DateLimits = 0))  BEGIN  Declare Rate_Days_Average_NextDate_Cur Cursor STATIC for  select distinct  EXCHDATE,EXGTBLID from DYNAMICS..MC00100 where EXGTBLID=@I_ExchangeTableID   and EXCHDATE between @firstDayofMonth and @LastDayofMonth order by EXCHDATE  OPEN Rate_Days_Average_NextDate_Cur  FETCH NEXT FROM Rate_Days_Average_NextDate_Cur INTO @EXCHDATE,@EXGTBLID  set @NumberofRowSelected = @@CURSOR_ROWS  while  @@FETCH_STATUS = 0   BEGIN   IF ((@NumberofRowSelected <> @Record_Increment) or (@LastDayofMonth = @EXCHDATE))  BEGIN   IF ((@firstDayofMonth <> @EXCHDATE) or (@LastDayofMonth = @EXCHDATE))  BEGIN  IF(@Record_Increment> 1)  BEGIN  select top 1 @Cur_ExchangeRate = isnull(XCHGRATE,0) from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @EXGTBLID   and EXCHDATE = @EXCHDATE order by EXCHDATE desc,TIME1 desc  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1  set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  set @PreviousOrNextDate=@EXCHDATE  set @Record_Increment +=1  END  ELSE IF(@Record_Increment = 1)  BEGIN  select Top 1 @Cur_ExchangeRate=isnull(XCHGRATE,0)   from DYNAMICS..MC00100 a (nolock)where EXGTBLID = @EXGTBLID and   EXCHDATE > @firstDayofMonth and TIME1 = (select  top 1 max(TIME1)  from DYNAMICS..MC00100 where EXGTBLID=@EXGTBLID and EXCHDATE = a.EXCHDATE)  order by EXCHDATE,TIME1  IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1  set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))+1  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  set @PreviousOrNextDate=@EXCHDATE   set @Record_Increment +=1  END   END   ELSE   IF(@firstDayofMonth = @EXCHDATE)  Begin  select Top 1 @Cur_ExchangeRate=isnull(XCHGRATE,0) from DYNAMICS..MC00100 (nolock)   where EXGTBLID = @EXGTBLID   and EXCHDATE=@EXCHDATE   order by TIME1 desc,EXCHDATE desc  IF @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1   set @O_ExchangeRate =@Cur_ExchangeRate                             set @Record_Increment +=1  END   END   ELSE  IF @Record_Increment = @NumberofRowSelected  BEGIN  select top 1 @Cur_ExchangeRate=isnull(XCHGRATE,0) from DYNAMICS..MC00100 (nolock)  where EXGTBLID = @EXGTBLID   and EXCHDATE = @EXCHDATE order by EXCHDATE desc ,TIME1 desc  IF  @Cur_ExchangeRate =0  set @Cur_ExchangeRate=1   set @NumberOfDays=abs(DATEDIFF(day,@PreviousOrNextDate,@EXCHDATE))  IF @NumberofRowSelected= 1  set @NumberOfDays +=1  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays   select top 1  @Cur_ExchangeRate= isnull(XCHGRATE,0)  from DYNAMICS..MC00100 a (nolock) where EXGTBLID = @EXGTBLID and EXCHDATE > @EXCHDATE   and TIME1 = (select  top 1 max(TIME1)from DYNAMICS..MC00100 where EXGTBLID=@EXGTBLID   and EXCHDATE = a.EXCHDATE)order by EXCHDATE,TIME1   IF  @Cur_ExchangeRate = 0  set @Cur_ExchangeRate=1  set @NumberOfDays=abs(DATEDIFF(day,@EXCHDATE,@LastDayofMonth))  set @O_ExchangeRate += @Cur_ExchangeRate*@NumberOfDays  END   set @Cur_ExchangeRate=0   FETCH NEXT FROM Rate_Days_Average_NextDate_Cur INTO @EXCHDATE,@EXGTBLID   END  close Rate_Days_Average_NextDate_Cur  DEALLOCATE Rate_Days_Average_NextDate_Cur  IF @NumberofRowSelected<>0   set @O_ExchangeRate=@O_ExchangeRate/@NumberOfDaysInMonth  ELSE  BEGIN  select Top 1 @O_ExchangeRate=ISNULL(XCHGRATE,0) from DYNAMICS..MC00100 a (nolock)where   EXGTBLID = @I_ExchangeTableID and   EXCHDATE >= @firstDayofMonth   and TIME1 = (select  top 1 max(TIME1)   from DYNAMICS..MC00100 where EXGTBLID=@I_ExchangeTableID and EXCHDATE = a.EXCHDATE)   order by EXCHDATE,TIME1  IF  @O_ExchangeRate=0  set @O_ExchangeRate=1   END  END  END  select @O_ExchangeRate=round(@O_ExchangeRate,@CurrencyDecimalPlaces)  END  return(@O_ExchangeRate)  END   
GO
GRANT EXECUTE ON  [dbo].[mcFuncGetExchangeRate] TO [DYNGRP]
GO
