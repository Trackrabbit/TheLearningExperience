SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smTaxYearEndClose] @I_iSQLSessionID int = NULL, @O_iErrorState int = NULL output  as  declare  @iNumberOfRecords int,  @tTransaction int  if @I_iSQLSessionID is NULL begin  select  @O_iErrorState = 20360   return end  select  @O_iErrorState = 0  if @@trancount = 0 begin  select  @tTransaction = 1   begin transaction end  select  @iNumberOfRecords = count( TAXDTLID ) from  TX00202  if @iNumberOfRecords  > 0 begin  update  TX00202  set  TDSLLYTD = TDTSYTD,  TDTSLYTD = TXDTSYTD,  TDSTLYTD = TXDSTYTD,  TDTSYTD = 0.0,  TXDTSYTD = 0.0,  TXDSTYTD = 0.0   if @@RowCount <> @iNumberOfRecords  begin  select  @O_iErrorState = 20361   if @tTransaction = 1  rollback transaction  return  end end  if @tTransaction = 1  commit transaction  return    
GO
GRANT EXECUTE ON  [dbo].[smTaxYearEndClose] TO [DYNGRP]
GO
