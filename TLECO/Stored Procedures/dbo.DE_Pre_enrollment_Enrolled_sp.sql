SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE  procedure [dbo].[DE_Pre_enrollment_Enrolled_sp]  @B_DOCDATE datetime,  @E_DOCDATE datetime as 


--DECLARE @B_DOCDATE datetime
--DECLARE @E_DOCDATE datetime
--SET @B_DOCDATE = '11-06-2014' --  GETDATE()
--SET @e_DOCDATE = '11-06-2014' --  GETDATE()

-- CHILD 
--854390000 interested
--854390001 enrolled
--854390002 refunded
--854390003 inactive 

select 
Center_Name
,sum(Enrolled) Enrolled
from
(
select distinct 
isnull(TC.[tle_name],TC2.[tle_name])   Center_Name
, ch.tle_name
,case when ch.tle_paymentamount<>0 then 1 else 0 end as  Enrolled
from
[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid]
left outer join [TLEPROD_MSCRM].[dbo].FilteredActivityPointer AP  ON AP.[regardingobjectid] = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[FilteredContact] CT on CT.contactid = CH.tle_contactid -- missing lead id record fix
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC2 on TC2.[tle_centerid] = CT.[tle_centerid]
where
DateAdd(dd,0,DateDiff(dd,0,ch.[tle_paymentdate])) BETWEEN  DateAdd(dd,0,DateDiff(dd,0,@B_DOCDATE )) AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))
--AND FL.STATECODE=1 -- no longer a lead
--AND TC.STATECODE=0
--and CH.tle_pe_status = 854390001
--and ch.tle_paymentamount<>0 
and ch.tle_pe_statusname in ('Enrolled','Refunded')
) j1
group by
Center_Name
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Enrolled_sp] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Enrolled_sp] TO [public]
GO
