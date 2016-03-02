SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smPeriodUpdateProjectSeries] @I_sPeriodID smallint = NULL, @I_sYear smallint = NULL, @I_tSeriesChecked tinyint = NULL, @I_iSQLSessionID int = NULL, @O_iErrorState int = NULL output  as  declare  @tTransaction tinyint,  @PROJECT smallint,  @iNumberOfRecords int  if @I_tSeriesChecked is NULL or  @I_sPeriodID is NULL or  @I_sYear is NULL or  @I_iSQLSessionID is NULL begin  select  @O_iErrorState = 20323  return end  select  @PROJECT = 7  select  @O_iErrorState = 0  if @@trancount = 0 begin  select  @tTransaction = 1   begin transaction  end  update  SY40100 set  PSERIES_6 = @I_tSeriesChecked where  FORIGIN  = 1 and  PERIODID = @I_sPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  if @@RowCount <> 1 begin  select  @O_iErrorState = 20339   if @tTransaction > 0  rollback transaction  return end  select  @iNumberOfRecords = count ( FORIGIN ) from  SY40100 where  FORIGIN  = 0 and  PERIODID = @I_sPeriodID and  SERIES  = @PROJECT and  YEAR1  = @I_sYear  if @iNumberOfRecords > 0 begin  update  SY40100  set  CLOSED  = @I_tSeriesChecked  where  FORIGIN  = 0 and  PERIODID = @I_sPeriodID and  SERIES  = @PROJECT and  YEAR1  = @I_sYear   if @iNumberOfRecords <> @@RowCount  begin  select  @O_iErrorState = 20347   if @tTransaction > 0  rollback transaction  return  end end  if @tTransaction > 0  commit transaction return    
GO
GRANT EXECUTE ON  [dbo].[smPeriodUpdateProjectSeries] TO [DYNGRP]
GO
