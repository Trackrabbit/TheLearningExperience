SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLCurrentBalance]  @I_dUserDate datetime = NULL,  @AccountIndex varchar(max)  as  set nocount on  declare @CurrentPeriodID int declare @CurrentYear int  declare @ValuesTable table (Value nvarchar(500)) insert into @ValuesTable select * from dbo.seeSplitString(@AccountIndex, ',')  if @I_dUserDate is null  set @I_dUserDate = dbo.GetDefaultMaxDate()  SELECT @I_dUserDate = dbo.GetDateStripTime(@I_dUserDate)    SELECT DISTINCT   @CurrentPeriodID = PERIODID,   @CurrentYear = YEAR1  FROM  SY40100  WHERE  @I_dUserDate between PERIODDT and PERDENDT AND   FORIGIN = 1   if @CurrentYear is null  begin  select @CurrentYear = max(YEAR1) from SY40100  select @CurrentPeriodID = MAX(PERIODID) from  SY40100 where YEAR1 = @CurrentYear  end  if @AccountIndex = '' begin  select   a.ACTINDX as ACTINDX,   a.ACTDESCR as ACTDESCR,  sum(isnull(b.PERDBLNC, 0.0)) as PERDBLNC from  GL00100 a left outer join  (select ACTINDX, PERDBLNC  from GL10110   where PERIODID >= 0 AND  PERIODID <= @CurrentPeriodID AND  YEAR1 = @CurrentYear  union all   select ACTINDX, PERDBLNC  from GL10111  where PERIODID >= 0 AND  PERIODID <= @CurrentPeriodID AND  YEAR1 = @CurrentYear) b   on a.ACTINDX = b.ACTINDX group by a.ACTDESCR, a.ACTINDX order by a.ACTDESCR end else begin  select   a.ACTINDX,   a.ACTDESCR,  sum(isnull(b.PERDBLNC, 0.0)) as PERDBLNC from  GL00100 a inner join @ValuesTable AccountList on  a.ACTINDX = AccountList.Value  left outer join  (select ACTINDX as ACTINDX,   PERDBLNC as PERDBLNC  from GL10110  union all   select ACTINDX, PERDBLNC  from GL10111) b   on a.ACTINDX = b.ACTINDX group by a.ACTDESCR, a.ACTINDX order by a.ACTDESCR end    
GO
GRANT EXECUTE ON  [dbo].[seeGLCurrentBalance] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLCurrentBalance] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLCurrentBalance] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLCurrentBalance] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLCurrentBalance] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeGLCurrentBalance] TO [rpt_power user]
GO
