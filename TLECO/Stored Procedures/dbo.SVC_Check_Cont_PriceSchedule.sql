SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Check_Cont_PriceSchedule]  (@PriceSchedule varchar(11) = NULL,  @Item char(31) = NULL,  @Customer char(15) = NULL)  as declare @numrows int  if @Customer > '' Begin  select @numrows = count(*) from SVC00601 where CONSTS < 4 and PRICSHED = @PriceSchedule and CUSTNMBR = @Customer End  else if @Item > '' Begin  select @numrows = count(*) from SVC00601 where CONSTS < 4 and PRICSHED = @PriceSchedule and ITEMNMBR = @Item End  else Begin  select @numrows = count(*) from SVC00600 where CONSTS < 4 and PRICSHED = @PriceSchedule  if @numrows = 0   BEGIN  select @numrows = count(*) from SVC00608 where CONSTS < 4 and PRICSHED = @PriceSchedule  if @numrows = 0   BEGIN  select @numrows = count(*) from SVC00601 where CONSTS < 4 and PRICSHED = @PriceSchedule  END  END End return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Cont_PriceSchedule] TO [DYNGRP]
GO
