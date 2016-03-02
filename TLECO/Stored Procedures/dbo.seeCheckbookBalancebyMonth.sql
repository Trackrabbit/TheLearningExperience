SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeCheckbookBalancebyMonth]  @I_dUserDate datetime = NULL,  @I_iNumOfMonths int   = NULL,  @CheckbookID varchar(max)  as  set nocount on  declare @dtStart datetime,   @dtEnd datetime,  @month int,  @iterator int  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @dtEnd = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @dtStart = DATEADD(month, -@I_iNumOfMonths, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate))  create table #Totals(Amount numeric(19,5),  MonthDate datetime not null,  CheckBookID char(15) not null,  CurrentBalance numeric(19, 5))    if @CheckbookID = ''  begin  select  @iterator = @I_iNumOfMonths  while (@iterator >= 1)  begin  insert #Totals select  0,DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)), '', SUM(CURRBLNC)   from CM00100  select @iterator = @iterator - 1  end   update #Totals set Amount =   (select CurrentBalance - isnull(SUM(TRXAMNT * case CMTrxType when 1 then 1 when 101 then 1 when 102 then 1 when 5 then 1 else -1 end), 0)   from CM20200   where TRXDATE > DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,MonthDate)+1,0))   and VOIDED = 0)  end else begin  select  @iterator = @I_iNumOfMonths  while (@iterator >= 1)  begin  insert #Totals   select   0,DATEADD(month, -@iterator, DATEADD(day, -day(@I_dUserDate)+1, @I_dUserDate)), CheckBookList.Value, SUM(CURRBLNC)  from dbo.seeSplitString(@CheckbookID, ',') CheckBookList, CM00100 where CM00100.CHEKBKID = CheckBookList.Value  group by CM00100.CHEKBKID, CheckBookList.Value  select @iterator = @iterator - 1  end    update #Totals set Amount =   (select CurrentBalance - isnull(SUM(TRXAMNT * case CMTrxType when 1 then 1 when 101 then 1 when 102 then 1 when 5 then 1 else -1 end), 0)   from CM20200   where TRXDATE > DATEADD(s,-1,DATEADD(mm, DATEDIFF(m,0,MonthDate)+1,0))   and VOIDED = 0 and CHEKBKID = CheckBookID) end  select SUM(Amount) as Amount, MonthDate,  CheckBookID  from #Totals with (NOLOCK)  group by MonthDate, CheckBookID order by MonthDate drop table #Totals    
GO
GRANT EXECUTE ON  [dbo].[seeCheckbookBalancebyMonth] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeCheckbookBalancebyMonth] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeCheckbookBalancebyMonth] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeCheckbookBalancebyMonth] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeCheckbookBalancebyMonth] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeCheckbookBalancebyMonth] TO [rpt_power user]
GO
