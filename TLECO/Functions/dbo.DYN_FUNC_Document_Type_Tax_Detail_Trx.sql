SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_Document_Type_Tax_Detail_Trx] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) set @oVarcharValuestring = case  when @iIntEnum = 1 then 'Financial General Entry' when @iIntEnum = 2 then 'Receivables Sales / Invoices' when @iIntEnum = 3 then 'Receivables Scheduled Payments' when @iIntEnum = 4 then 'Receivables Debit Memos' when @iIntEnum = 5 then 'Receivables Finance Charges' when @iIntEnum = 6 then 'Receivables Service / Repairs' when @iIntEnum = 7 then 'Receivables Warranty' when @iIntEnum = 8 then 'Receivables Credit Memo' when @iIntEnum = 9 then 'Receivables Returns' when @iIntEnum = 10 then 'Receivables Payments' when @iIntEnum = 11 then 'Invoicing Invoice' when @iIntEnum = 12 then 'Invoicing Return' when @iIntEnum = 13 then 'Invoicing Packing Slip' when @iIntEnum = 14 then 'Sales Invoice' when @iIntEnum = 15 then 'Sales Return' when @iIntEnum = 16 then 'Payables Invoice' when @iIntEnum = 17 then 'Payables Finance Charge' when @iIntEnum = 18 then 'Payables Misc Charge' when @iIntEnum = 19 then 'Payables Return' when @iIntEnum = 20 then 'Payables Credit Memo' when @iIntEnum = 21 then 'Payables Payment' when @iIntEnum = 22 then 'Payables Schedule' when @iIntEnum = 23 then 'Purchasing Invoice' else ''  end  RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_Document_Type_Tax_Detail_Trx] TO [DYNGRP]
GO
