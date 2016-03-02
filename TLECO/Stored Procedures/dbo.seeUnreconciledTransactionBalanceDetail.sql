SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUnreconciledTransactionBalanceDetail]  @I_dUserDate datetime = NULL,  @CheckbookID varchar(max)  as  set nocount on  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  begin   select a.CHEKBKID, a.TRXDATE, a.CMTrxNum, a.DSCRIPTN, a.TRXAMNT  from CM20200 a inner join (select * from dbo.seeSplitString(@CheckbookID, ',')) CheckbookList on a.CHEKBKID = CheckbookList.Value  where Recond = 0 and TRXDATE <= @I_dUserDate  order by TRXDATE end    
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalanceDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalanceDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalanceDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalanceDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalanceDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalanceDetail] TO [rpt_power user]
GO
