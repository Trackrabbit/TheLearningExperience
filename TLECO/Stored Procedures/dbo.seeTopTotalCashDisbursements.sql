SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeTopTotalCashDisbursements]  @UserDate datetime = NULL,  @MaxVendors int = NULL,  @Vendor varchar(max) as  declare @ValuesTable table (Value nvarchar(500))  insert into @ValuesTable select * from dbo.seeSplitString(@Vendor, ',')  select @UserDate = dbo.GetDateStripTime(@UserDate)  if @Vendor = '' begin  if @MaxVendors <> 0  select top (select @MaxVendors) RTRIM(VENDORID) as VENDORID, sum(CURTRXAM) as CURTRXAM, '' as Filter   from PM20000 with (noLock)   where ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  group by VENDORID   order by CURTRXAM desc, VENDORID asc  else  select RTRIM(VENDORID) as VENDORID, sum(CURTRXAM) as CURTRXAM, '' as Filter   from PM20000 with (noLock)  where ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  group by VENDORID   order by CURTRXAM desc, VENDORID asc end else begin  if @MaxVendors <> 0  select top (select @MaxVendors) RTRIM(VENDORID) as VENDORID, sum(CURTRXAM) as CURTRXAM , RTRIM(VENDORID) as Filter  from PM20000 with (noLock) inner join @ValuesTable VendorList  on VendorList.Value = PM20000.VENDORID   where ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  group by VENDORID   order by CURTRXAM desc, VENDORID asc  else  select RTRIM(VENDORID) as VENDORID, sum(CURTRXAM) as CURTRXAM , RTRIM(VENDORID) as Filter   from PM20000 with (noLock) inner join @ValuesTable VendorList  on VendorList.Value = PM20000.VENDORID   where ((DUEDATE >= @UserDate) and (DUEDATE <= @UserDate + 9))  group by VENDORID   order by CURTRXAM desc, VENDORID asc end   
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursements] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursements] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursements] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeTopTotalCashDisbursements] TO [rpt_executive]
GO
