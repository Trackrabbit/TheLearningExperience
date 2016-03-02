SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTopCustomerBalancesDetailAgingLabels]  as  declare   @AgingLabel1 varchar(15),  @AgingLabel2 varchar(15),  @AgingLabel3 varchar(15),  @AgingLabel4 varchar(15),  @AgingLabel5 varchar(15),  @AgingLabel6 varchar(15),  @AgingLabel7 varchar(15)  select @AgingLabel1 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 1 select @AgingLabel2 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 2 select @AgingLabel3 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 3 select @AgingLabel4 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 4 select @AgingLabel5 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 5 select @AgingLabel6 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 6 select @AgingLabel7 = RMPERDSC from RM40201 with (noLock) where INDEX1 = 7  select RTRIM(@AgingLabel1) as AgingLabel1,  RTRIM(@AgingLabel2) as AgingLabel2,  RTRIM(@AgingLabel3) as AgingLabel3,  RTRIM(@AgingLabel4) as AgingLabel4,  RTRIM(@AgingLabel5) as AgingLabel5,  RTRIM(@AgingLabel6) as AgingLabel6,  RTRIM(@AgingLabel7) as AgingLabel7    
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetailAgingLabels] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetailAgingLabels] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetailAgingLabels] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetailAgingLabels] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetailAgingLabels] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalancesDetailAgingLabels] TO [rpt_order processor]
GO
