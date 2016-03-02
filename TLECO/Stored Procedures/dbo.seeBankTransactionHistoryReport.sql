SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeBankTransactionHistoryReport]  @ChekbkID varchar (max),  @trxtype varchar (max),  @AuditTrailFrom varchar(100) = NULL,  @AuditTrailTo varchar(100),  @TrxNumberFrom varchar(100) = NULL,  @TrxNumberTo varchar(100),  @sort int  as  set nocount on  if (@sort = 1)   BEGIN  SELECT case VOIDED when 1 then 'Yes' else '' END as voided,   CHEKBKID,   case CMTrxType when 1 then 'Deposit'   when 3 then 'Check' when 4 then 'Withdrawal'   when 5 then 'Increase Adjustment'   when 6 then 'Decrease Adjustment'   when 7 then 'Transfer'   when 101 then 'Interest Income'   when 103 then 'Other Expense' end as TransactionType,    CMTrxNum,   TRXDATE,  POSTEDDT,   ClrdAmt,   TRXAMNT,  paidtorcvdfrom,   DSCRIPTN,  AUDITTRAIL  FROM CM20200  WHERE (Recond = 1) and   ((@AuditTrailFrom is null and AUDITTRAIL < @AuditTrailTo) or  (@AuditTrailFrom = '' and AUDITTRAIL < @AuditTrailTo) or  (AUDITTRAIL between @AuditTrailFrom and @AuditTrailTo)) and  ((CMTrxNum between @TrxNumberFrom and @TrxNumberTo) or  (@TrxNumberFrom = '' and CMTrxNum < @TrxNumberTo) or  (@TrxNumberFrom is NULL and CMTrxNum < @TrxNumberTo)) and   (CHEKBKID in (select * from seeStringToTable(@ChekbkID, ',','')))and   (CMTrxType in (select * from seeStringToTable(@trxtype, ',','')))  ORDER BY CMTrxNum  END  else   BEGIN  SELECT case VOIDED when 1 then 'Yes' else '' END as voided,   CHEKBKID,   case CMTrxType when 1 then 'Deposit'   when 3 then 'Check' when 4 then 'Withdrawal'   when 5 then 'Increase Adjustment'   when 6 then 'Decrease Adjustment'   when 7 then 'Transfer'   when 101 then 'Interest Income'   when 103 then 'Other Expense' end as TransactionType,    CMTrxNum,   TRXDATE,  POSTEDDT,   ClrdAmt,   TRXAMNT,  paidtorcvdfrom,   DSCRIPTN,  AUDITTRAIL  FROM CM20200  WHERE (Recond = 1) and   ((@AuditTrailFrom is null and AUDITTRAIL < @AuditTrailTo) or  (@AuditTrailFrom = '' and AUDITTRAIL < @AuditTrailTo) or  (AUDITTRAIL between @AuditTrailFrom and @AuditTrailTo)) and  ((CMTrxNum between @TrxNumberFrom and @TrxNumberTo) or  (@TrxNumberFrom = '' and CMTrxNum < @TrxNumberTo) or  (@TrxNumberFrom is NULL and CMTrxNum < @TrxNumberTo)) and   (CHEKBKID in (select * from seeStringToTable(@ChekbkID, ',','')))and   (CMTrxType in (select * from seeStringToTable(@trxtype, ',','')))  ORDER BY TRXDATE  END   
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionHistoryReport] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionHistoryReport] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionHistoryReport] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionHistoryReport] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionHistoryReport] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeBankTransactionHistoryReport] TO [rpt_power user]
GO
