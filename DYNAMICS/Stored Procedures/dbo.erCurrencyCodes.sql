SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erCurrencyCodes] as  set nocount on select   currency_id    = currency_setp.CURNCYID,  currency_description = currency_setp.CRNCYDSC  from   MC40200 currency_setp    
GO
GRANT EXECUTE ON  [dbo].[erCurrencyCodes] TO [DYNGRP]
GO
