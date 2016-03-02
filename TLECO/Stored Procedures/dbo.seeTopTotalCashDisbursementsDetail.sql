SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTopTotalCashDisbursementsDetail]  @UserDate datetime = NULL,  @MaxVendors int   = NULL,  @Vendor varchar(15) = NULL as  select @UserDate = dbo.GetDateStripTime(@UserDate)   if @Vendor <> ''  select RTRIM(VENDORID) as VENDORID, DOCDATE, RTRIM(DOCNUMBR) as DOCNUMBR, DOCAMNT, CURTRXAM, DUEDATE, DISCDATE   from PM20000 with (noLock)  where (VENDORID = @Vendor) and ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  order by CURTRXAM desc  else   if @MaxVendors <> 0  select RTRIM(a.VENDORID) as VENDORID, DOCDATE, RTRIM(DOCNUMBR) as DOCNUMBR, DOCAMNT, a.CURTRXAM, DUEDATE, DISCDATE   from PM20000 a with (noLock),  (select top (select @MaxVendors) VENDORID, sum(CURTRXAM) as CURTRXAM from PM20000 with (noLock)  where ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  group by VENDORID   order by CURTRXAM desc) b  where (a.VENDORID = b.VENDORID) and (DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9)  else  select RTRIM(VENDORID) as VENDORID, DOCDATE, RTRIM(DOCNUMBR) as DOCNUMBR, DOCAMNT, CURTRXAM, DUEDATE, DISCDATE   from PM20000 with (noLock)  where ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  order by CURTRXAM desc   
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursementsDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursementsDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursementsDetail] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursementsDetail] TO [rpt_executive]
GO
