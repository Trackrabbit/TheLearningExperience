SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Is_Call_In_Coverage](@ContractNumber char(11),  @ContractLine numeric(19,5),  @CallDate datetime,  @CallTime datetime,  @IsCovered smallint output) as declare @CallDatetime datetime declare @Avail smallint declare @ContractStart datetime declare @ContractEnd datetime declare @i smallint  select @i = 1, @IsCovered = 0 exec SVC_util_combine_date_time @CallDate,  @CallTime,  @CallDatetime output while @i <= 4 and @IsCovered = 0 begin  exec SVC_Get_Contract_Work_Hours @ContractNumber,  @ContractLine,  @CallDatetime,  @i,  @Avail output,  @ContractStart output,  @ContractEnd output  if @Avail = 1 and  @ContractStart <= @CallDatetime and  @ContractEnd >= @CallDatetime  BEGIN  select @IsCovered = 1  END  ELSE  BEGIN  select @IsCovered = 0  END   select @i = @i + 1 end return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Is_Call_In_Coverage] TO [DYNGRP]
GO
