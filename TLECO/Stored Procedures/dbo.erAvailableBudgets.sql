SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erAvailableBudgets] @from_date datetime=NULL, @to_date datetime=NULL as  set nocount on select  budget_id   = BUDGETID,  budget_description = BUDCOMNT,  budget_year   = budget.YEAR1  from  GL00200 budget, SY40101 period  where   budget.YEAR1 = period.YEAR1 and  (@from_date is null or @from_date <= period.LSTFSCDY ) and  (@to_date is null or @to_date >= period.FSTFSCDY)  return 0    
GO
GRANT EXECUTE ON  [dbo].[erAvailableBudgets] TO [DYNGRP]
GO
