SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE procedure [dbo].[DE_Pre_enrollment_Daily2_sp] @B_DOCDATE datetime,@E_DOCDATE datetime as 


--DECLARE @DOCDATE datetime
--Declare @B_Docdate datetime
--set @B_Docdate='1/1/2015'
--SET @DOCDATE = '8/11/2015' --  GETDATE()

select 
TC.[tle_name] Center_Name
,TC.[tle_state]
,DPTD=(Select count(*) from [TLEPROD_MSCRM].[dbo].FilteredLead l where  TC.[tle_centerid] = L.[tle_centerid] and statecodename='Open' and tle_leadtypename='Pre-Enrollment')

,LTD = (Select count(*) from [TLEPROD_MSCRM].[dbo].Filteredtle_child FL where TC.[tle_centerid] = FL.[tle_centerid])
,TLLW = (Select count(*) from [TLEPROD_MSCRM].[dbo].Filteredtle_child FL where TC.[tle_centerid] = FL.[tle_centerid] and DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) between  dateadd(wk, datediff(wk, 0, @B_DOCDATE) - 1, 0) and   dateadd(wk, datediff(wk, 0, @B_DOCDATE), 0)-1 )
,TLTW = (Select count(*) from [TLEPROD_MSCRM].[dbo].Filteredtle_child FL where TC.[tle_centerid] = FL.[tle_centerid] and DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) between  DATEADD(ww, DATEDIFF(ww,0,@B_DOCDATE), 0)   and  DATEADD(ww, DATEDIFF(ww,0,@B_DOCDATE)+1, -1) )

--,TLPE = (select ISNULL(sum(case when FL.statecode = 1 and FL.tle_leadtype = 854390000 then 1 Else 0 End ),0) Enrolled from [TLEPROD_MSCRM].[dbo].[FilteredLead] FL  inner join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid] where TC.[tle_centerid] = FL.[tle_centerid])
,TLPE = (select ISNULL(sum(case when   FL.tle_pe_statusname = 'Enrolled' then 1 Else 0 End ),0) Enrolled from [TLEPROD_MSCRM].[dbo].Filteredtle_child FL   where TC.[tle_centerid] = FL.[tle_centerid])
,REF = (SELECT ISNULL(SUM(case when fc.tle_pe_statusname='refunded' then 1 else 0 End),0) 'Refund' from [TLEPROD_MSCRM].[dbo].Filteredtle_child  FC  WHERE  TC.[tle_centerid] = FC.[tle_centerid])
,TEOD = (select ISNULL(sum(case when   FL2.tle_pe_statusname = 'Enrolled' then 1 Else 0 End ),0) Enrolled from [TLEPROD_MSCRM].[dbo].Filteredtle_child  FL2   inner join  [TLEPROD_MSCRM].[dbo].[Filteredtle_center] tc2  on TC2.[tle_centerid] = FL2.[tle_centerid]
 where TC2.[tle_centerid] = TC.[tle_centerid] AND TC.tle_actualopendate >= TC.CreatedOn )
,TC.tle_signinstalledon
,TC.TLE_actualBP BuildingPermit
,0 EnroledandRefunded
,0 Conversion 
,case when (select count(*) from  [TLEPROD_MSCRM].[dbo].[FilteredCampaign] CN where  CN.typecode = 854390000  and CN.statecode = 0 and CN.tle_centerid = TC.[tle_centerid]) >0 Then 1 else 0 End as MicroSitePromo
,TC.tle_leasedate
,TC.tle_acceptsworkandfamily
,isnull([Infant A],0) [Infant A]
,isnull([Infant B],0) [Infant B]
,isnull([Toddler],0) [Toddler]
,isnull([Twaddler],0) [Twaddler]
,isnull([Prepper],0) [Prepper]
,isnull([Prek 1],0) [Prek 1]
,isnull([Prek 2],0) [Prek 2]
--  select  *
from
 [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC 
 LEFT OUTER JOIN [DE_Pre_enrollment_Classroom_vw] CV on CV.[tle_centerid] = TC.[tle_centerid]
 where
TC.[statuscode]<> 2
and 
TC.statuscodename not in ('open','closed')  --- under construction
and
TC.tle_isacceptspreenrollment = 1 

--select distinct statuscodename from [TLEPROD_MSCRM].[dbo].[Filteredtle_center]
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Daily2_sp] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Daily2_sp] TO [public]
GO
