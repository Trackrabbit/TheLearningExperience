SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erCurrencyRateTypes] as  set nocount on select  rate_type_id = RATETPID from  MC40100    
GO
GRANT EXECUTE ON  [dbo].[erCurrencyRateTypes] TO [DYNGRP]
GO
