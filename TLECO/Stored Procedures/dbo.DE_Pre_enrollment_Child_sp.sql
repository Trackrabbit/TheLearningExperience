SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE  procedure  [dbo].[DE_Pre_enrollment_Child_sp] as 


IF OBJECT_ID('tempdb..#Results1') IS NOT NULL
    DROP TABLE #Results1

IF OBJECT_ID('tempdb..#Results2') IS NOT NULL
    DROP TABLE #Results2

-- enrolled 

select isnull(TC.tle_maincenterididname,TC.tle_name) CenterName, FL.tle_preenrollpaymtreceivedon, FL.fullname ParentName, CH.[tle_programname], CH.tle_name, 'Enrolled' [Status],
CH.statecode ChildStatus, FL.STATECODE LeadStatus, TC.STATECODE CenterStatus
into #Results1
from
[TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH
left outer join [TLEPROD_MSCRM].[dbo].[FilteredLead] FL on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] --and TC.[statecode]=0
where 
CH.statecode =0
and TC.tle_centerid is not null
and CH.tle_name is not null 
and FL.tle_leadtype = 854390000
AND FL.STATECODE=1 -- no longer a lead
AND TC.STATECODE=0
--and CH.tle_pe_status = 854390001 -- enrolled

-- Not Enrolled


select isnull(TC.tle_maincenterididname,TC.tle_name) CenterName, FL.tle_preenrollpaymtreceivedon, FL.fullname ParentName, CH.[tle_programname], CH.tle_name, 'Not Enrolled' [Status],
CH.statecode ChildStatus, FL.STATECODE LeadStatus, TC.STATECODE CenterStatus
into #Results2
from
[TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH
left outer join [TLEPROD_MSCRM].[dbo].[FilteredLead] FL on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] --and TC.[statecode]=0
where 
TC.tle_centerid is not null
and CH.tle_name is not null 
and FL.tle_leadtype = 854390000
and FL.fullname is not null
and FL.fullname not in ( select distinct ParentName from #Results1) 
--and CH.tle_pe_status = 854390000  -- interested


select * from #Results1
union
select * from #Results2


-- CHILD 
--854390000 interested
--854390001 enrolled
--854390002 refunded
--854390003 inactive 
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Child_sp] TO [DYNGRP]
GO
