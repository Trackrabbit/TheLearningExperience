SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erCurrencyRates]  @currency_id char(15),  @rate_type_id char(15),  @from_date datetime = NULL,  @to_date datetime = NULL as  set nocount on  if @currency_id not in (select CURNCYID from DYNAMICS..MC40200) begin  return -1 end  if @rate_type_id not in (select RATETPID from MC40100) begin  return -2 end  select   exchange_date  = rate_mstr.EXCHDATE,  exchange_rate  = rate_mstr.XCHGRATE,  calculation_method = xchg_table_setp.RTCLCMTD from   MC40301 xchg_setp   join  DYNAMICS..MC00100 rate_mstr   on xchg_setp.EXGTBLID = rate_mstr.EXGTBLID  join  DYNAMICS..MC40300 xchg_table_setp  on xchg_setp.EXGTBLID = xchg_table_setp.EXGTBLID where  xchg_setp.CURNCYID = @currency_id and  xchg_setp.RATETPID = @rate_type_id and  (@to_date is null or rate_mstr.EXCHDATE <= @to_date) and  (@from_date is null or rate_mstr.EXCHDATE >= @from_date) order by exchange_date  return 0    
GO
GRANT EXECUTE ON  [dbo].[erCurrencyRates] TO [DYNGRP]
GO
