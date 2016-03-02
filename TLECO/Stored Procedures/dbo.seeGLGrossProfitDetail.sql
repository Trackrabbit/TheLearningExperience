SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeGLGrossProfitDetail]  @TransactionDateStart datetime = null,  @TransactionDateEnd datetime = null as if @TransactionDateStart is null  if @TransactionDateEnd is null   select *     from AccountTransactions  else   select *     from AccountTransactions    where ([TRX Date] <= @TransactionDateEnd) if @TransactionDateStart is not null  if @TransactionDateEnd is null   select *     from AccountTransactions    where ([TRX Date] >= @TransactionDateStart)  else   select *     from AccountTransactions    where ([TRX Date] >= @TransactionDateStart and [TRX Date] <= @TransactionDateEnd)          
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLGrossProfitDetail] TO [rpt_executive]
GO
