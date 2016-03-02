SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeEmployeeTurnoverKPI]  @UserDate datetime  = NULL,  @TimeUnit varchar(10)  = 'Month' as  declare   @CurrentInactive numeric(19,5),  @CurrentTotal numeric(19,5),  @PreviousInactive numeric(19,5),  @PreviousTotal numeric(19,5),  @LastYearInactive numeric(19,5),  @LastYearTotal numeric(19,5),  @sdcurrent datetime,  @edcurrent datetime,  @sdprevious datetime,  @edprevious datetime,  @sdlastyear datetime,  @edlastyear datetime  SELECT   @sdcurrent = SDCurrent,   @edcurrent = EDCurrent,   @sdprevious = SDPrevious,   @edprevious = EDPrevious,   @sdlastyear = SDLastYear,   @edlastyear = EDLastYear  FROM   dbo.GetKPIDates(@UserDate, 'Gregorian', @TimeUnit)   select @CurrentInactive =   COUNT(EMPLOYID) from UPR00100 where INACTIVE = 1 and DEMPINAC between @sdcurrent and @edcurrent and STRTDATE <= @edcurrent  select @CurrentTotal =   COUNT(EMPLOYID) from UPR00100 where ((INACTIVE = 0 and STRTDATE <= @edcurrent)) or  ((STRTDATE <= @edcurrent) AND (INACTIVE = 1) AND (DEMPINAC >= @sdcurrent)) select @PreviousInactive =   COUNT(EMPLOYID) from UPR00100 where INACTIVE = 1 and DEMPINAC between @sdprevious and @edprevious and STRTDATE <= @edprevious select @PreviousTotal =   COUNT(EMPLOYID) from UPR00100 where (INACTIVE = 0 and STRTDATE <= @edprevious )or  ((STRTDATE <= @edprevious) AND (INACTIVE = 1) AND (DEMPINAC >= @sdprevious)) select @LastYearInactive =   COUNT(EMPLOYID) from UPR00100 where INACTIVE = 1 and DEMPINAC between @sdlastyear and @edlastyear and STRTDATE <= @edlastyear select @LastYearTotal =   COUNT(EMPLOYID) from UPR00100 where (INACTIVE = 0 and STRTDATE <= @edlastyear) or  ((STRTDATE <= @edlastyear) AND (INACTIVE = 1) AND (DEMPINAC >= @sdlastyear))  select  case when @CurrentTotal = 0 then 0.00 else  round((@CurrentInactive/@CurrentTotal), 4)  end as CurrentET,   case when @PreviousTotal = 0 then 0.00 else  round((@PreviousInactive/@PreviousTotal) ,4) end as PreviousET,   case when @LastYearTotal = 0 then 0.00 else  round((@LastYearInactive/@LastYearTotal) ,4) end as LastYearET    
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverKPI] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverKPI] TO [rpt_payroll]
GO
