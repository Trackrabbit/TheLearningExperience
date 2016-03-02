SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE  view [dbo].[DE_Pre_enrollment_Classroom_vw] as 


select 
 tle_centerid
,isnull([Infant A],0) [Infant A]
,isnull([Infant B],0) [Infant B]
,isnull([Toddler],0) [Toddler]
,isnull([Twaddler],0) [Twaddler]
,isnull([Prepper],0) [Prepper]
,isnull([Prek 1],0) [Prek 1]
,isnull([Prek 2],0) [Prek 2]
from 
(select [tle_leadid],  TC.tle_centerid, [tle_programname]
from
[TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH
left outer join [TLEPROD_MSCRM].[dbo].[FilteredLead] FL on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] and TC.[statecode]=0
where CH.statecode =0) CH 
PIVOT
(
COUNT([tle_leadid]) FOR [tle_programname] IN 
([Infant A],[Infant B],[Toddler],[Twaddler],[Prepper],[Prek 1], [Prek 2])
) AS PVT 

where tle_centerid is not null


GO
GRANT SELECT ON  [dbo].[DE_Pre_enrollment_Classroom_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_Pre_enrollment_Classroom_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_Pre_enrollment_Classroom_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_Pre_enrollment_Classroom_vw] TO [DYNGRP]
GO
