SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE procedure [dbo].[DE_Pre_enrollment_ActByMonth_sp] as



--- ENROLLED 
select 
month(FL.tle_preenrollpaymtreceivedon) MonthNbr
,DATENAME(month, FL.tle_preenrollpaymtreceivedon) MnthName
,FL.tle_preenrollpaymtreceivedon Contact_date
,case when AP.[activitytypecode] = 4201 then 'Appointment'
when AP.[activitytypecode] = 4202 then 'Email'
when AP.[activitytypecode] = 4204 then 'Fax'
when AP.[activitytypecode] = 4207 then 'Letter'
when AP.[activitytypecode] = 4210 then 'Phone Call'
End as Act_Type
,TC.[tle_name] Center_Name
,FL.[fullname] Lead_Fullname
,FL.tle_primaryphone
,FL.mobilephone
,FL.telephone1
,FL.telephone2
,case when FL.tle_leadtype = 854390000 then 1 Else 0 End  Enrolled
,FL.[description]
,FL.CreatedOn
,FL.[tle_preenrollpaymentamount]
,FL.[tle_preenrollpaymtreceivedon]
,[tle_programname]
from
[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
inner join [TLEPROD_MSCRM].[dbo].FilteredActivityPointer AP  ON AP.[regardingobjectid] = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] 
WHERE
FL.STATECODE=1 -- no longer a lead
and FL.tle_centerid is not null 
and FL.tle_preenrollpaymtreceivedon is not null 


UNION 

--- OPEN LEAD
select 
month(AP.ActualEnd) MonthNbr
,DATENAME(month, AP.ActualEnd) MnthName
,AP.ActualEnd Contact_date
,case when AP.[activitytypecode] = 4201 then 'Appointment'
when AP.[activitytypecode] = 4202 then 'Email'
when AP.[activitytypecode] = 4204 then 'Fax'
when AP.[activitytypecode] = 4207 then 'Letter'
when AP.[activitytypecode] = 4210 then 'Phone Call'
End as Act_Type
,TC.[tle_name] Center_Name
,FL.[fullname] Lead_Fullname
,FL.tle_primaryphone
,FL.mobilephone
,FL.telephone1
,FL.telephone2
,case when FL.statecode = 1 and FL.tle_leadtype = 854390000 then 1 Else 0 End  Enrolled
,FL.[description]
,FL.CreatedOn
,FL.[tle_preenrollpaymentamount]
,FL.[tle_preenrollpaymtreceivedon]
,[tle_programname]
from
[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
inner join [TLEPROD_MSCRM].[dbo].FilteredActivityPointer AP  ON AP.[regardingobjectid] = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] 
WHERE
FL.STATECODE=0 --- OPEN LEAD





GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_ActByMonth_sp] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_ActByMonth_sp] TO [public]
GO
