SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smPeriodUpdatePurchasingSeries] @I_sPeriodID smallint = NULL, @I_sYear smallint = NULL, @I_tSeriesChecked tinyint = NULL, @I_iSQLSessionID int = NULL, @O_iErrorState int = NULL output  as  declare  @tTransaction tinyint,  @PURCHASING smallint,  @iNumberOfRecords int,  @iError int,  @iStatus int  if @I_tSeriesChecked is NULL or  @I_sPeriodID is NULL or  @I_sYear is NULL or  @I_iSQLSessionID is NULL begin  select  @O_iErrorState = 20320  return end  exec @iStatus = DYNAMICS..smGetConstantInt 'PURCHASING', @PURCHASING output, @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @O_iErrorState <> 0 or @iStatus <> 0  return @iStatus  select  @O_iErrorState = 0  if @@trancount = 0 begin  select  @tTransaction = 1   begin transaction end  update  SY40100 set  PSERIES_3 = @I_tSeriesChecked where  FORIGIN  = 1 and  PERIODID = @I_sPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  if @@RowCount <> 1 begin  select  @O_iErrorState = 20337   if @tTransaction > 0  rollback transaction  return end  select  @iNumberOfRecords = count ( FORIGIN ) from  SY40100 where  FORIGIN  = 0 and  PERIODID = @I_sPeriodID and  SERIES  = @PURCHASING and  YEAR1  = @I_sYear  if @iNumberOfRecords > 0 begin  update  SY40100  set  CLOSED  = @I_tSeriesChecked  where  FORIGIN  = 0 and  PERIODID = @I_sPeriodID and  SERIES  = @PURCHASING and  YEAR1  = @I_sYear   if @iNumberOfRecords <> @@RowCount  begin  select  @O_iErrorState = 20347   if @tTransaction > 0  rollback transaction  return  end end  if @tTransaction > 0  commit transaction return    
GO
GRANT EXECUTE ON  [dbo].[smPeriodUpdatePurchasingSeries] TO [DYNGRP]
GO