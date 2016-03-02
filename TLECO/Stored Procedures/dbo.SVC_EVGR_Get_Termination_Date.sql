SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_EVGR_Get_Termination_Date]  @CONSTS                 smallint,  @CONTNBR                char(11),  @TERMINATIONDATE   datetime output AS declare  @Startdate datetime,  @Length smallint,  @Period smallint,  @RenewLimit smallint,  @MaxDate datetime  exec smGetMaxDate @MaxDate output   select @Startdate = STRTDATE, @Length = Contract_Length, @Period = Contract_Period, @RenewLimit = SVC_Evergreen_RenewLimit  from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR if @RenewLimit = 0   select @TERMINATIONDATE = @MaxDate else   select @TERMINATIONDATE =   case @Period   when 1 then dateadd(dd, (@Length * (@RenewLimit+ 1)), @Startdate)  when 2 then dateadd(mm, (@Length * (@RenewLimit+ 1)), @Startdate)  when 3 then dateadd(yy, (@Length * (@RenewLimit+ 1)), @Startdate)  END  select @TERMINATIONDATE = dateadd(dd,-1,@TERMINATIONDATE)  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_EVGR_Get_Termination_Date] TO [DYNGRP]
GO
