SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeDetailCategoryAccountTransactionsMonthly] @UserDate datetime = NULL, @I_iPeriodMonths int = NULL, @I_iAccountCategory int = NULL as  set nocount ON declare    @dtStart datetime,  @dtStartCurrentMonth datetime,  @dtEnd datetime select @dtStartCurrentMonth = DATEADD(mm, DATEDIFF(mm,0,@UserDate), 0) select @dtStart = DATEADD(mm,-@I_iPeriodMonths+1,@dtStartCurrentMonth) select @dtEnd = DATEADD(ms,-3,DATEADD(mm, DATEDIFF(m,0,@UserDate)+1, 0)) select SOURCDOC,SDOCDSCR,* from AccountTransactions,SY00900 where [TRX Date] >= @dtStart and [TRX Date] <= @dtEnd and [Account Category Number] = dbo.DYN_FUNC_Account_Category_Number(@I_iAccountCategory) and [Source Document] = SOURCDOC order by [TRX Date] asc set nocount OFF RETURN          
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeDetailCategoryAccountTransactionsMonthly] TO [rpt_order processor]
GO
