SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeBankTransactionType] as  set nocount on  select 'Deposit' as label, 1 as value union select 'Check' as label, 3 as value union select 'Withdrawal' as label, 4 as value union select 'Increase Adjustment' as label, 5 as value union select 'Decrease Adjustment' as label, 6 as value union select 'Transfer' as label, 7 as value union select 'Interest Income' as label, 101 as value union select 'Other Expense' as label, 103 as value order by value   
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionType] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionType] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionType] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionType] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionType] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionType] TO [rpt_power user]
GO
