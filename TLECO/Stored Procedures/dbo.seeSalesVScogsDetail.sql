SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeSalesVScogsDetail]  @UserDate datetime as declare @StartDate datetime declare @EndDate datetime set @StartDate = dateadd(dd,-(day(@UserDate)-1),@UserDate) set @EndDate = dateadd(s,-1,DATEADD(mm, datediff(m,0,@UserDate)+1,0)) select [Journal Entry],   [TRX Date],   [Account Number],   [Account Description],   [Account Category Number],   case [Account Category Number]  when 'Sales' then [Credit Amount] - [Debit Amount]           when 'Sales Returns and Discounts' then -( [Debit Amount] - [Credit Amount] )           when 'Cost of Goods Sold' then [Debit Amount] - [Credit Amount]   end as Total,   case [Account Category Number]  when 'Sales' then 1           when 'Sales Returns and Discounts' then 1           when 'Cost of Goods Sold' then 2   end as VS,   [Account Index For Drillback],   [Journal Entry For Drillback]  from AccountTransactions  where [Account Category Number] in ('Sales','Sales Returns and Discounts','Cost of Goods Sold')  and [TRX Date] >= @StartDate  and [TRX Date] <= @EndDate  and [Document Status] = 'Open'          
GO
GRANT EXECUTE ON  [dbo].[seeSalesVScogsDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSalesVScogsDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSalesVScogsDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeSalesVScogsDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSalesVScogsDetail] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSalesVScogsDetail] TO [rpt_power user]
GO
