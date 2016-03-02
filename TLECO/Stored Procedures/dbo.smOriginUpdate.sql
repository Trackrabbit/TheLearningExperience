SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smOriginUpdate] @I_sSeries smallint = NULL, @I_cOrigin char(30) = NULL, @I_iPeriodID int = NULL, @I_tClosePeriods tinyint = NULL, @I_sYear smallint = NULL, @I_iSQLSessionID int = NULL, @O_iErrorState int = NULL output  as  if @I_sSeries is NULL or  @I_cOrigin is NULL or  @I_iPeriodID is NULL or  @I_tClosePeriods is NULL or  @I_sYear is NULL or  @I_iSQLSessionID is NULL begin  select  @O_iErrorState = 20309  return end  select  @O_iErrorState = 0  update  SY40100 set  CLOSED  = @I_tClosePeriods where  FORIGIN  = 0 and  PERIODID = @I_iPeriodID and  SERIES  = @I_sSeries and  ODESCTN = @I_cOrigin and  YEAR1  = @I_sYear  if @@RowCount <> 1 begin  select  @O_iErrorState = 20353 end  if @I_tClosePeriods = 0 or  not exists ( select  1  from  SY40100   where  CLOSED  = 0 and  FORIGIN  = 0 and  PERIODID = @I_iPeriodID and  SERIES  = @I_sSeries and  YEAR1  = @I_sYear) begin  if @I_sSeries = 2    begin  update  SY40100  set  PSERIES_1 = @I_tClosePeriods  where  FORIGIN  = 1 and  PERIODID = @I_iPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  end  else if @I_sSeries = 3   begin  update  SY40100  set  PSERIES_2 = @I_tClosePeriods  where  FORIGIN  = 1 and  PERIODID = @I_iPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  end  else if @I_sSeries = 4   begin  update  SY40100  set  PSERIES_3 = @I_tClosePeriods  where  FORIGIN  = 1 and  PERIODID = @I_iPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  end  else if @I_sSeries = 5   begin  update  SY40100  set  PSERIES_4 = @I_tClosePeriods  where  FORIGIN  = 1 and  PERIODID = @I_iPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  end  else if @I_sSeries = 6   begin  update  SY40100  set  PSERIES_5 = @I_tClosePeriods  where  FORIGIN  = 1 and  PERIODID = @I_iPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  end  else if @I_sSeries = 7   begin  update  SY40100  set  PSERIES_6 = @I_tClosePeriods  where  FORIGIN  = 1 and  PERIODID = @I_iPeriodID and  SERIES  = 0 and  YEAR1  = @I_sYear  end  if @@RowCount <> 1  begin  select  @O_iErrorState = 20344  return  end end    
GO
GRANT EXECUTE ON  [dbo].[smOriginUpdate] TO [DYNGRP]
GO
