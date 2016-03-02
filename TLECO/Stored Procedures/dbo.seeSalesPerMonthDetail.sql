SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSalesPerMonthDetail]  @UserDate datetime as declare @StartDate datetime declare @EndDate datetime set @StartDate = dateadd(dd,-(day(@UserDate)-1),@UserDate) set @EndDate = dateadd(s,-1,DATEADD(mm, datediff(m,0,@UserDate)+1,0)) select [Customer Number],   [Customer Name],   [Document Number],   [Document Type],   [Document Date],   case [Document Type Int] when 8  then ([Sales Amount] * -1.00) when 1  then [Sales Amount] end as [Sales Amount],   [Customer Number For Drillback],   [Document Number For Drillback]   from ReceivablesTransactions  where [Document Type Int] in (1, 8)  and [Void Status] = 'Normal'  and [Document Status] <> 'Unposted'  and [Document Date] >= @StartDate  and [Document Date] <= @EndDate          
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerMonthDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerMonthDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerMonthDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerMonthDetail] TO [rpt_executive]
GO
