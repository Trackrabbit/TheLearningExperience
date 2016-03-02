SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_Fix_zeroNextBillDate] AS  declare @ContractNumber char(11) declare @Line numeric(19,5) declare @NextBillDate datetime  declare Contract_Liab cursor for   select SVC00601.CONTNBR, LNSEQNBR, SVC00600.NXTBLDTE   from SVC00601 left join SVC00600 on SVC00600.CONSTS = SVC00601.CONSTS and SVC00600.CONTNBR = SVC00601.CONTNBR  where SVC00600.CONSTS = 2 and SVC00600.NXTBLDTE <> '2900-01-01' and SVC00601.NXTBLDTE = '2900-01-01'  and SVC00601.TOTAL = 0 and SVC00601.BILEND > getdate() and Contract_Line_Status <> 'C'   open Contract_Liab   fetch next from Contract_Liab into @ContractNumber , @Line, @NextBillDate  while @@FETCH_STATUS = 0  BEGIN  update SVC00601 set NXTBLDTE = @NextBillDate where CONSTS = 2 and CONTNBR = @ContractNumber and LNSEQNBR = @Line  fetch next from Contract_Liab into @ContractNumber , @Line, @NextBillDate  END  deallocate Contract_Liab return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Fix_zeroNextBillDate] TO [DYNGRP]
GO
