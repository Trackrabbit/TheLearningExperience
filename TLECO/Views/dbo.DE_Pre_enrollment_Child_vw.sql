SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE  view [dbo].[DE_Pre_enrollment_Child_vw] as 


select isnull(TC.tle_maincenterididname,TC.tle_name) CenterName, FL.tle_preenrollpaymtreceivedon, FL.fullname ParentName, CH.[tle_programname], CH.tle_name
from
[TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH
left outer join [TLEPROD_MSCRM].[dbo].[FilteredLead] FL on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] and TC.[statecode]=0
where 
CH.statecode =0
and TC.tle_centerid is not null
and CH.tle_name is not null 
and FL.tle_leadtype = 854390000
AND FL.STATECODE=1 -- no longer a lead
AND TC.STATECODE=0
and FL.tle_preenrollpaymtreceivedon is not null 
--order by TC.tle_centerid, FL.fullname, [tle_programname]

--select * from [TLEPROD_MSCRM].[dbo].[Filteredtle_center]

--select * from [TLEPROD_MSCRM].[dbo].[FilteredLead] 

--select * from  [TLEPROD_MSCRM].[dbo].[Filteredtle_child] 



GO
GRANT SELECT ON  [dbo].[DE_Pre_enrollment_Child_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_Pre_enrollment_Child_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_Pre_enrollment_Child_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_Pre_enrollment_Child_vw] TO [DYNGRP]
GO
