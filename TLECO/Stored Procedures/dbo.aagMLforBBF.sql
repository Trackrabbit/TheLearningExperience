SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagMLforBBF]  @iaaBBFFilter varchar(500) as set nocount on begin  declare @retCode int  declare @execCmd nvarchar(4000)  declare @execCmd1  varchar(8000)  declare @execCmd2  varchar(8000)  declare @aaSQLCols varchar(2000)  declare @aaSQLInsert varchar(4000)  declare @aaSQLSelect varchar(4000)  declare @inti int  declare @strltr  varchar(1)   declare @len  integer  declare @iCol   int  declare @execNewCmd1 varchar(8000)   declare @execNewCmd2 varchar(8000)   declare @totlenInsert int  declare @totlenSelect int  declare @totlenFrom1 int  declare @totlenFrom2 int  declare @totlenWhere int  declare @totlenGroupBy int  declare @totlenCmd int  declare @aaSQLFrom1 varchar(8000)  declare @aaSQLFrom2 varchar(8000)  set @totlenInsert = 0  set @totlenSelect = 0  set @totlenFrom1 = 0  set @totlenFrom2 = 0  set @totlenWhere = 0  set @totlenGroupBy = 0  set @totlenCmd = 0  set @execNewCmd1 = ''  set @execNewCmd2 = ''  set @aaSQLFrom1 = ''  set @aaSQLFrom2 = ''    if exists(select name from tempdb..sysobjects where name = '##OptionsNew'  and type = 'U') drop table ##OptionsNew  select * into ##OptionsNew from ##Options  if exists(select name from tempdb..sysobjects where name = '##PreCalcAlt'  and type = 'U') drop table ##PreCalcAlt   update ##OptionsNew set aaSQLCreate = replace(convert(varchar(8000),aaSQLCreate),'##PreCalc','##PreCalcAlt'),  aaSQLInsert = replace(convert(varchar(8000),aaSQLInsert),'##PreCalc','##PreCalcAlt')   select @execCmd1 =   rtrim(convert(varchar(8000), aaSQLCreate))   from ##OptionsNew   exec ( @execCmd1 )   select @execCmd = N'ALTER table ##PreCalcAlt add aaBudgetID tinyint NULL'   exec @retCode = sp_executesql @execCmd   if (@retCode <> 0) return @retCode   select @totlenInsert = DATALENGTH(aaSQLInsert) from ##OptionsNew  select @totlenSelect = DATALENGTH(aaSQLSelect) from ##OptionsNew  select @totlenFrom1 = DATALENGTH(aaSQLFrom3) from ##OptionsFrom  select @totlenFrom2 = DATALENGTH(aaSQLFrom4) from ##OptionsFrom   select @totlenWhere = DATALENGTH(aaSQLWhere) from ##OptionsNew  select @totlenGroupBy = DATALENGTH(aaSQLGroupBy) from ##OptionsNew  select @aaSQLFrom1 = aaSQLFrom3 from ##OptionsFrom  select @aaSQLFrom2 = aaSQLFrom4 from ##OptionsFrom   if len(@aaSQLFrom1) = 7999  begin  set @aaSQLFrom1 = rtrim(@aaSQLFrom1) + '' + space(1)  end    if (@totlenInsert+@totlenSelect+@totlenFrom1) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect)   select @execCmd1 =  rtrim(convert(varchar(8000), aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), @aaSQLFrom1)),1,@totlenCmd-1-1)  from ##OptionsNew  select @execNewCmd1 =  substring(convert(varchar(8000), @aaSQLFrom1),@totlenCmd-1 ,@totlenFrom1)   +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  else if (@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect+@totlenFrom1)   select @execCmd1 =  rtrim(convert(varchar(8000), aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   substring(rtrim(convert(varchar(8000), @aaSQLFrom2)),1,@totlenCmd-1)  from ##OptionsNew  select @execNewCmd1 = substring(convert(varchar(8000), @aaSQLFrom2),@totlenCmd -1,@totlenFrom2)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))+ SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  else if (@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2)   select @execCmd1 =  rtrim(convert(varchar(8000), aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), aaSQLWhere)),1,@totlenCmd-1)  from ##OptionsNew  select @execNewCmd1 = substring(convert(varchar(8000), aaSQLWhere),@totlenCmd -1,@totlenWhere)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  else if (@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere+@totlenGroupBy) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere)   select @execCmd1 =  rtrim(convert(varchar(8000), aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))+ SPACE(1) +  substring(rtrim(convert(varchar(8000), aaSQLGroupBy)),1,@totlenCmd)  from ##OptionsNew  select @execNewCmd1 = substring(convert(varchar(8000), aaSQLGroupBy),@totlenCmd -1,@totlenGroupBy)  from ##OptionsNew   end  else  begin  select @execCmd1 =  rtrim(convert(varchar(8000), aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1))   + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  select @totlenFrom1 = DATALENGTH(aaSQLFrom1) from ##OptionsFrom  select @totlenFrom2 = DATALENGTH(aaSQLFrom2) from ##OptionsFrom   select @aaSQLFrom1 = aaSQLFrom1 from ##OptionsFrom  select @aaSQLFrom2 = aaSQLFrom2 from ##OptionsFrom   if len(@aaSQLFrom1) = 7999  begin  set @aaSQLFrom1 = rtrim(@aaSQLFrom1) + '' + space(1)  end    if (@totlenSelect+@totlenFrom1) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect)   select @execCmd2 =  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), @aaSQLFrom1)),1,@totlenCmd-1-1)  from ##Options  select @execNewCmd2 =  substring(convert(varchar(8000), @aaSQLFrom1),@totlenCmd-1 ,@totlenFrom1)   +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  else if (@totlenSelect+@totlenFrom1+@totlenFrom2) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect+@totlenFrom1)   select @execCmd2 =  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   substring(rtrim(convert(varchar(8000), @aaSQLFrom2)),1,@totlenCmd-1)  from ##Options  select @execNewCmd2 = substring(convert(varchar(8000), @aaSQLFrom2),@totlenCmd -1,@totlenFrom2)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))+ SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  else if (@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect+@totlenFrom1+@totlenFrom2)   select @execCmd2 =  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), aaSQLWhere)),1,@totlenCmd-1)  from ##Options  select @execNewCmd2 = substring(convert(varchar(8000), aaSQLWhere),@totlenCmd -1,@totlenWhere)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  else if (@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere+@totlenGroupBy) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere)   select @execCmd2 =  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))+ SPACE(1) +  substring(rtrim(convert(varchar(8000), aaSQLGroupBy)),1,@totlenCmd)  from ##Options  select @execNewCmd2 = substring(convert(varchar(8000), aaSQLGroupBy),@totlenCmd -1,@totlenGroupBy)  from ##Options   end  else  begin  select @execCmd2 =  rtrim(convert(varchar(8000), aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1))   + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLWhere))  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  exec (@execCmd1 + '' + @execNewCmd1 + ' union all ' + @execCmd2 + '' + @execNewCmd2)   if exists(select aaYearFld from ##Options where aaYearFld like '%Fiscal%' ) and @iaaBBFFilter <> ''  begin  select @aaSQLSelect = aaSQLSelect from ##Options  set @aaSQLSelect = replace(convert(varchar(2000), @aaSQLSelect),'date.aaFiscalYear','date.aaFiscalYear + 1')   set @aaSQLSelect = replace(convert(varchar(2000), @aaSQLSelect),'date.aaFiscalWeek','400')  set @aaSQLSelect = replace(convert(varchar(2000), @aaSQLSelect),'date.aaFiscalPeriod','400')  set @aaSQLSelect = replace(convert(varchar(2000), @aaSQLSelect),'date.aaFiscalQuarter','400')  set @aaSQLSelect = replace(convert(varchar(2000), @aaSQLSelect),'date.aaFiscalHalfYear','400')   set @inti = 0  set @aaSQLSelect = replace(@aaSQLSelect,'L'+convert(varchar(2),@inti)+'_code.aaTrxCodeID','isnull(L'+convert(varchar(2),@inti)+'_code.aaTrxCodeID,0)')  set @aaSQLSelect = replace(@aaSQLSelect,'L'+convert(varchar(2),@inti)+'_treeLink.aaMstrID','isnull(L'+convert(varchar(2),@inti)+'_treeLink.aaMstrID,0)')  select @inti = count(*) from ##Lvl  while @inti <> 0  begin  set @aaSQLSelect = replace(@aaSQLSelect,'L'+convert(varchar(2),@inti)+'_code.aaTrxCodeID','isnull(L'+convert(varchar(2),@inti)+'_code.aaTrxCodeID,0)')  set @aaSQLSelect = replace(@aaSQLSelect,'L'+convert(varchar(2),@inti)+'_treeLink.aaMstrID','isnull(L'+convert(varchar(2),@inti)+'_treeLink.aaMstrID,0)')  set @inti = @inti - 1  end   select @aaSQLInsert = convert(varchar(8000),aaSQLInsert) from ##OptionsNew  select @totlenInsert = DATALENGTH(@aaSQLInsert)  select @totlenSelect = DATALENGTH(@aaSQLSelect)  select @totlenFrom1 = DATALENGTH(aaSQLFrom5) from ##OptionsFrom  select @totlenFrom2 = DATALENGTH(aaSQLFrom6) from ##OptionsFrom   select @totlenWhere = DATALENGTH(@iaaBBFFilter)  select @totlenGroupBy = DATALENGTH(aaSQLGroupBy) from ##Options   select @aaSQLFrom1 = aaSQLFrom5 from ##OptionsFrom  select @aaSQLFrom2 = aaSQLFrom6 from ##OptionsFrom   if len(@aaSQLFrom1) = 7999  begin  set @aaSQLFrom1 = rtrim(@aaSQLFrom1) + '' + space(1)  end    if (@totlenInsert+@totlenSelect+@totlenFrom1) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect)    select @execCmd1 =  rtrim(convert(varchar(8000), @aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), @aaSQLFrom1)),1,@totlenCmd-1-1)  from ##Options  select @execNewCmd1 =  substring(convert(varchar(8000), @aaSQLFrom1),@totlenCmd-1 ,@totlenFrom1)   +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), @iaaBBFFilter))  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  else if (@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect+@totlenFrom1)   select @execCmd1 =  rtrim(convert(varchar(8000), @aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   substring(rtrim(convert(varchar(8000), @aaSQLFrom2)),1,@totlenCmd-1)  from ##Options  select @execNewCmd1 = substring(convert(varchar(8000), @aaSQLFrom2),@totlenCmd -1,@totlenFrom2)  + SPACE(1) +  rtrim(convert(varchar(8000), @iaaBBFFilter))+ SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  else if (@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2)   select @execCmd1 =  rtrim(convert(varchar(8000), @aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), @iaaBBFFilter)),1,@totlenCmd-1)  from ##Options  select @execNewCmd1 = substring(convert(varchar(8000), aaSQLWhere),@totlenCmd -1,@totlenWhere)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end  else if (@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere+@totlenGroupBy) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenInsert+@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere)   select @execCmd1 =  rtrim(convert(varchar(8000), @aaSQLInsert)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), @iaaBBFFilter))+ SPACE(1) +  substring(rtrim(convert(varchar(8000), aaSQLGroupBy)),1,@totlenCmd)  from ##Options  select @execNewCmd1 = substring(convert(varchar(8000), aaSQLGroupBy),@totlenCmd -1,@totlenGroupBy)  from ##Options   end  else  begin  select @execCmd1 =  rtrim(@aaSQLInsert) + SPACE(1) +  rtrim(@aaSQLSelect) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1))   + SPACE(1) +  rtrim(@iaaBBFFilter)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##Options   end   select @totlenFrom1 = DATALENGTH(aaSQLFrom7) from ##OptionsFrom  select @totlenFrom2 = DATALENGTH(aaSQLFrom8) from ##OptionsFrom    select @aaSQLFrom1 = aaSQLFrom7 from ##OptionsFrom  select @aaSQLFrom2 = aaSQLFrom8 from ##OptionsFrom   if len(@aaSQLFrom1) = 7999  begin  set @aaSQLFrom1 = rtrim(@aaSQLFrom1) + '' + space(1)  end    if (@totlenSelect+@totlenFrom1) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect)   select @execCmd2 =  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), @aaSQLFrom1)),1,@totlenCmd-1-1)  from ##OptionsNew  select @execNewCmd2 =  substring(convert(varchar(8000), @aaSQLFrom1),@totlenCmd-1 ,@totlenFrom1)   +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), @iaaBBFFilter))  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  else if (@totlenSelect+@totlenFrom1+@totlenFrom2) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect+@totlenFrom1)   select @execCmd2 =  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   substring(rtrim(convert(varchar(8000), @aaSQLFrom2)),1,@totlenCmd-1)  from ##OptionsNew  select @execNewCmd2 = substring(convert(varchar(8000), @aaSQLFrom2),@totlenCmd -1,@totlenFrom2)  + SPACE(1) +  rtrim(convert(varchar(8000), @iaaBBFFilter))+ SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  else if (@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect+@totlenFrom1+@totlenFrom2)   select @execCmd2 =  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  substring(rtrim(convert(varchar(8000), @iaaBBFFilter)),1,@totlenCmd-1)  from ##OptionsNew  select @execNewCmd2 = substring(convert(varchar(8000), aaSQLWhere),@totlenCmd -1,@totlenWhere)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end  else if (@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere+@totlenGroupBy) >= 8000-1  begin  set @totlenCmd = 8000-1-(@totlenSelect+@totlenFrom1+@totlenFrom2+@totlenWhere)   select @execCmd2 =  rtrim(convert(varchar(8000), @aaSQLSelect)) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1)) +   rtrim(convert(varchar(8000), @aaSQLFrom2)) + SPACE(1) +  rtrim(convert(varchar(8000), @iaaBBFFilter))+ SPACE(1) +  substring(rtrim(convert(varchar(8000), aaSQLGroupBy)),1,@totlenCmd)  from ##OptionsNew  select @execNewCmd2 = substring(convert(varchar(8000), aaSQLGroupBy),@totlenCmd -1,@totlenGroupBy)  from ##OptionsNew   end  else  begin  select @execCmd2 =  rtrim(@aaSQLSelect) + SPACE(1) +  rtrim(convert(varchar(8000), @aaSQLFrom1))   + SPACE(1) +  rtrim(@iaaBBFFilter)  + SPACE(1) +  rtrim(convert(varchar(8000), aaSQLGroupBy))  from ##OptionsNew   end    exec (@execCmd1 + '' + @execNewCmd1 + ' union all ' + @execCmd2 + '' + @execNewCmd2)    end  Delete ##PreCalcAlt where debit=0 and credit=0 and balance=0    select @execCmd = N'update ##PreCalcAlt set aaBudgetID = 0'   exec @retCode = sp_executesql @execCmd   if (@retCode <> 0) return @retCode   select @aaSQLCols = aaSQLCols from ##OptionsNew  if @aaSQLCols <> ''  begin  set @aaSQLCols = ', ' + @aaSQLCols  end   select @aaSQLInsert = replace(convert(varchar(8000),aaSQLInsert),')',', aaBudgetID)') from ##Options   select @execCmd1 = 'select year1, period, isnull(sum(debit), 0),  isnull(sum(credit),0), isnull(sum(balance), 0) ' + @aaSQLCols + ', aaBudgetID  from  ##PreCalcAlt  group by year1, period' +  @aaSQLCols + ', aaBudgetID'   truncate table ##PreCalc  select @execCmd =  rtrim(convert(varchar(8000), @aaSQLInsert)) + SPACE(1) + @execCmd1  exec @retCode = sp_executesql @execCmd   if (@retCode <> 0) return @retCode    Select Top 1 @iCol = aaColumn from  ##ExpCols order by aaColumn desc   if @iCol >80   begin  EXEC @retCode= aagMLCalcBudgetValues 0  if (@retCode <> 0) return @retCode   end end    
GO
GRANT EXECUTE ON  [dbo].[aagMLforBBF] TO [DYNGRP]
GO