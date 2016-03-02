SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[mcCurrencyAccountMSTRInitialize]  @O_iErrorState           int             = NULL  output  as   select  @O_iErrorState   = 0  insert into MC00200 select GL00100.ACTINDX, '', 0, 0, 0, 1,getutcdate() from GL00100 where GL00100.ACCTTYPE = 1 and GL00100.ACTINDX not in (select ACTINDX from MC00200 where MC00200.CURNCYID = '')  select @O_iErrorState = @@error  return   
GO
GRANT EXECUTE ON  [dbo].[mcCurrencyAccountMSTRInitialize] TO [DYNGRP]
GO
