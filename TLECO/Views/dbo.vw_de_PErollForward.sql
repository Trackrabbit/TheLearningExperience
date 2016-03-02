SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE view [dbo].[vw_de_PErollForward]
as

SELECT      'Beginning Balance Enrollments' as Line,  count(c.tle_childid) [Child Count],sum(c.tle_paymentamount) [Payment Amount]
FROM           [TLEPROD_MSCRM].[dbo].[FilteredLead] L

left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] C on C.[tle_leadid]  = L.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] cc on cC.[tle_centerid] = L.[tle_centerid]  and cc.statecodename='Active'
where c.tle_paymentdate between '01/01/2015' and  CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(getdate())-1),getdate()),101) and tle_leadtypename='Pre-Enrollment' 
union
SELECT      'Beginning Balance Returns' as Line,  count(c.tle_childid)*-1 [Child Count],sum(c.tle_paymentamount)*-1 [Payment Amount]
FROM           [TLEPROD_MSCRM].[dbo].[FilteredLead] L

left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] C on C.[tle_leadid]  = L.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] cc on cC.[tle_centerid] = L.[tle_centerid]  and cc.statecodename='Active'
where c.tle_refunddate between '01/01/2015' and  CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(getdate())-1),getdate()),101) and tle_leadtypename='Pre-Enrollment' 
--group by cc.tle_name


union
--current period enrollment
SELECT       'current period enrollment' as Line, count(c.tle_childid) [Child Count],sum(c.tle_paymentamount) [Payment Amount]
FROM           [TLEPROD_MSCRM].[dbo].[FilteredLead] L

left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] C on C.[tle_leadid]  = L.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] cc on cC.[tle_centerid] = L.[tle_centerid]  and cc.statecodename='Active'
where c.tle_paymentdate between CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(getdate())-1),getdate()),101) and getdate() and tle_leadtypename='Pre-Enrollment' 
--group by cc.tle_name
union
--current period Returns
SELECT       'current period Returns' as Line, count(c.tle_childid)*-1 [Child Count],sum(c.tle_paymentamount)*-1 [Payment Amount]
FROM           [TLEPROD_MSCRM].[dbo].[FilteredLead] L

left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] C on C.[tle_leadid]  = L.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] cc on cC.[tle_centerid] = L.[tle_centerid]  and cc.statecodename='Active'
where c.tle_refunddate between CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(getdate())-1),getdate()),101) and getdate() and tle_leadtypename='Pre-Enrollment' 
--group by cc.tle_name

union
--Current Period Centers Open enrollments
SELECT       'Current Period Centers Open Enrollment' as Line, count(c.tle_childid) [Child Count],sum(c.tle_paymentamount) [Payment Amount]
FROM           [TLEPROD_MSCRM].[dbo].[FilteredLead] L

left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] C on C.[tle_leadid]  = L.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] cc on cC.[tle_centerid] = L.[tle_centerid]  and cc.statecodename='Active'
where cc.tle_actualopen between CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(getdate())-1),getdate()),101) and getdate() and c.tle_paymentdate between '01/01/2015' and '7/9/2015' and tle_leadtypename='Pre-Enrollment' 
--Current Period Centers Open Refunds
union
SELECT       'Current Period Centers Open returns' as Line, count(c.tle_childid)*-1 [Child Count],sum(c.tle_paymentamount)*-1 [Payment Amount]
FROM           [TLEPROD_MSCRM].[dbo].[FilteredLead] L

left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] C on C.[tle_leadid]  = L.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] cc on cC.[tle_centerid] = L.[tle_centerid]  and cc.statecodename='Active'
where cc.tle_actualopen between CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(getdate())-1),getdate()),101) and GETDATE() and c.tle_refunddate between '01/01/2015' and '7/9/2015' and tle_leadtypename='Pre-Enrollment' 
--group by cc.tle_name
GO
GRANT SELECT ON  [dbo].[vw_de_PErollForward] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[vw_de_PErollForward] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[vw_de_PErollForward] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[vw_de_PErollForward] TO [DYNGRP]
GO
