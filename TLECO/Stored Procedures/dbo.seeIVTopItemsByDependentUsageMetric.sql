SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeIVTopItemsByDependentUsageMetric]   @UserDate datetime = NULL,  @SummaryType int,  @NumToSelect int = 1   as set nocount ON if @SummaryType = 1   select TOP (select @NumToSelect) sum(SMMRYDPNDNTUSGCST) as SumTotal,   ITEMNMBR from IV30102 with (NOLOCK)   where LOCNCODE = ''  and   SMRYPMTH = MONTH(@UserDate)-1 and   YEAR1 = YEAR(@UserDate) and   SMMRYDPNDNTUSGCST <> 0   group by ITEMNMBR   order by SumTotal DESC  else if @SummaryType = 2   select TOP (select @NumToSelect) sum(SMMRYDPNDNTUSGQTY) as SumTotal,   ITEMNMBR from IV30102 with (NOLOCK)   where LOCNCODE = ''  and   SMRYPMTH = MONTH(@UserDate)-1 and   YEAR1 = YEAR(@UserDate) and   SMMRYDPNDNTUSGQTY <> 0   group by ITEMNMBR   order by SumTotal DESC    
GO
GRANT EXECUTE ON  [dbo].[seeIVTopItemsByDependentUsageMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeIVTopItemsByDependentUsageMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeIVTopItemsByDependentUsageMetric] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeIVTopItemsByDependentUsageMetric] TO [rpt_operations manager]
GO
