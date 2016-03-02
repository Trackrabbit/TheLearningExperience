SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smPeriodUpdatePeriodName] @I_cPeriodName char(20) = NULL, @I_sPeriodID smallint = NULL, @I_sYear smallint = NULL, @I_iSQLSessionID int = NULL, @O_iErrorState int = NULL output  as  declare  @tTransaction tinyint,  @iNumberOfRecords int  if @I_cPeriodName is NULL or  @I_sPeriodID is NULL or  @I_sYear is NULL or   @I_iSQLSessionID is NULL begin  select  @O_iErrorState = 20312  return end  select  @O_iErrorState = 0  if @@trancount = 0 begin  select  @tTransaction = 1   begin transaction end  if exists( select  1  from  SY40100  where  FORIGIN  >= 0 and  SERIES  >= 0 and  PERIODID >= 0 and  PERNAME = @I_cPeriodName and  YEAR1  = @I_sYear ) begin  select  @O_iErrorState = 20301   if @tTransaction > 0  rollback transaction  return end else begin  select  @iNumberOfRecords = count ( FORIGIN )  from  SY40100  where  FORIGIN  >= 0 and  SERIES  >= 0 and  PERIODID = @I_sPeriodID and  YEAR1  = @I_sYear   if @iNumberOfRecords > 0  begin  update  SY40100  set  PERNAME = @I_cPeriodName  where  FORIGIN  >= 0 and  SERIES  >= 0 and  PERIODID = @I_sPeriodID and  YEAR1  = @I_sYear   if @iNumberOfRecords <> @@RowCount  begin  select  @O_iErrorState = 20341   if @tTransaction > 0  rollback transaction  return  end  end end  if @tTransaction > 0  commit transaction return    
GO
GRANT EXECUTE ON  [dbo].[smPeriodUpdatePeriodName] TO [DYNGRP]
GO
