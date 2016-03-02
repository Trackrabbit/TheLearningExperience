SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec [DE_Pre_enrollment_sp] '01-01-2015', '03/26/2015'
CREATE  procedure [dbo].[DE_Pre_enrollment_sp] @B_DOCDATE datetime,  @E_DOCDATE datetime as 


--DECLARE @B_DOCDATE datetime
--DECLARE @E_DOCDATE datetime
--SET @B_DOCDATE = '01-01-2015' --  GETDATE()
--SET @e_DOCDATE = '02-21-2015' --  GETDATE()


-- CHILD 
--854390000 interested
--854390001 enrolled
--854390002 refunded
--854390003 inactive 


DECLARE
@Today_Leads_Phone INT,
@Today_Leads_email INT, 
@Today_Leads_enrollments INT,
@Today_Leads_refunds INT,
@Enrollments_to_date INT,
@Enrollments_mtd INT,
@Enrollments_wtd INT,
@refunds_YTD INT,
@refunds_MTD INT,
@refunds_WTD INT



IF OBJECT_ID('tempdb..#table1 ') IS NOT NULL DROP TABLE #table1 


IF OBJECT_ID('tempdb..#DU1 ') IS NOT NULL DROP TABLE #DU1 

CREATE TABLE #DU1 (
DU1_Date datetime,
SortOrder int,
FieldName char(25),
FieldValue int
)



select 
Contact_date
,Act_Type
,Center_Name
,tle_state
,Lead_Fullname
,tle_primaryphone
,mobilephone
,telephone1
,telephone2
,Enrolled
,[description]
,CreatedOn
,tle_preenrollpaymentamount
,tle_preenrollpaymtreceivedon
,Refund
,Contact_Fullname
,statuscode
,statuscodename
,tle_contacttype
,tle_contacttypename
,tle_refundamount
,tle_refundamount_base
,tle_refundprocessedon
,[tle_programname]
into #table1 
from 
(
---- OPEN ENROLLMENT 
select 
AP.ActualEnd Contact_date
,case when AP.[activitytypecode] = 4201 then 'Appointment'
when AP.[activitytypecode] = 4202 then 'Email'
when AP.[activitytypecode] = 4204 then 'Fax'
when AP.[activitytypecode] = 4207 then 'Letter'
when AP.[activitytypecode] = 4210 then 'Phone Call'
End as Act_Type
,TC.[tle_name] Center_Name
,TC.[tle_state]
,FL.[fullname] Lead_Fullname
,FL.tle_primaryphone
,FL.mobilephone
,FL.telephone1
,FL.telephone2
,0 Enrolled
,FL.[description]
,AP.ActualEnd CreatedOn   ---- **
,FL.[tle_preenrollpaymentamount]
,FL.[tle_preenrollpaymtreceivedon]
,'' Refund
,'' Contact_Fullname
,'' statuscode
,'' statuscodename
,'' tle_contacttype
,'' tle_contacttypename
,'' tle_refundamount
,'' tle_refundamount_base
,'' tle_refundprocessedon
,[tle_programname]
from
[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
left outer join [TLEPROD_MSCRM].[dbo].FilteredActivityPointer AP  ON AP.[regardingobjectid] = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FL.[tle_centerid] and TC.[statuscode]=0
WHERE
FL.STATECODE =0  --- OPEN LEAD, NOT ENROLLED
and CH.tle_pe_status = 854390000
--854390000 interested
--854390001 enrolled
--854390002 refunded
--854390003 inactive 


UNION 
--- ENROLLED

select  
CH.tle_paymentdate Contact_date
,'' Act_Type
,TC.[tle_name] Center_Name
,TC.[tle_state]
,'' as Lead_Fullname
--FL.[fullname] 
,'' as tle_primaryphone
--,FL.tle_primaryphone
,'' as mobilephone
--,FL.mobilephone
,'' as telephone1
--,FL.telephone1
,'' as telephone2
--,FL.telephone2
--,1 as Enrolled
,case when CH.tle_paymentamount!=0 then 1 Else 0 End  Enrolled
,'' as Description
--,FL.[description]
,ch.[tle_paymentdate] CreatedOn ---- ****
,ch.[tle_paymentamount]
,ch.[tle_paymentdate]
,'' Refund
,CH.tle_name Contact_Fullname
,'' statuscode
,'' statuscodename
,'' tle_contacttype
,ch.tle_name tle_contacttypename
,'' tle_refundamount
,'' tle_refundamount_base
,'' tle_refundprocessedon
,[tle_programname]
from
--[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
--left outer join 
[TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH 
--on CH.[tle_leadid]  = FL.[leadid] and ch.statecode=0
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = CH.[tle_centerid] 
WHERE
--ch.tle_paymentamount is not null 
--and 
 CH.tle_pe_statusname in ('enrolled','Refunded') --- ENROLLED

union all

select 
CH.tle_RefundDate  Contact_date
,'' Act_Type
,TC.[tle_name] Center_Name
,'' tle_state
,'' Lead_fullname
,'' tle_primaryphone
,'' mobilephone
,'' telephone1
,'' telephone2
,0 Enrolled
,'' [description]
,CH.tle_RefundDate  CreatedOn
,'' tle_preenrollpaymentamount
,ch.tle_RefundDate tle_preenrollpaymtreceivedon
,case when CH.tle_refundamount <>0 then 1 else 0 End 'Refund'
,FC.fullname Contact_Fullname
,CH.tle_pe_status statuscode
,FC.statuscodename
,FC.tle_contacttype
,FC.tle_contacttypename
,FC.[tle_refundamount]
,FC.[tle_refundamount_base]
,CH.tle_RefundDate as [tle_refundprocessedon]
,'' [tle_programname]
from [TLEPROD_MSCRM].[dbo].[Filteredcontact] FC
inner join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH  on CH.[tle_leadid]  = FC.originatingleadid 
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FC.[tle_centerid] 
where
--ch.tle_refundamount!=0
--and 
CH.tle_pe_statusname='Refunded'

--and tle_paymentamount_base is not null 
--and tle_refundedby is not null
--and tc.statuscodename<>'closed'
--854390000 interested
--854390001 enrolled
--854390002 refunded
--854390003 inactive 

) j1


-- today's lead 

--@Today_Leads_Phone
--@Today_Leads_email
--@Today_Leads_enrollments
--@Today_Leads_refunds 
--@Enrollments_to_date 
--@Enrollments_mtd
--@Enrollments_wtd
--@refunds_YTD 
--@refunds_MTD
--@refunds_WTD


select @Today_Leads_Phone = count(CreatedOn) 
from #table1 
where
Act_Type =  'Phone Call'
AND DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) BETWEEN  DateAdd(dd,0,DateDiff(dd,0,@B_DOCDATE )) AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))

select @Today_Leads_email = count(CreatedOn)  
from #table1 
where
Act_Type =  'Email'
AND DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) BETWEEN  DateAdd(dd,0,DateDiff(dd,0,@B_DOCDATE )) AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))

select @Today_Leads_enrollments = sum(Enrolled) --- 'Enrolled', Center_Name
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) BETWEEN  DateAdd(dd,0,DateDiff(dd,0,@B_DOCDATE )) AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))
and Enrolled=1
--group by Center_Name


select @Today_Leads_refunds  = sum(Refund)   --- 'Refund', Center_Name
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,Contact_date)) BETWEEN  DateAdd(dd,0,DateDiff(dd,0,@B_DOCDATE )) AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))
and Refund=1
--group by Center_Name


select @Enrollments_to_date  =sum(Enrolled)   --- YTD 
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) >= DATEADD(yy, DATEDIFF(yy,0,@E_DOCDATE), 0)  and Year(CreatedOn) = Year(@E_DOCDATE) and DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) <= @E_DOCDATE
and Enrolled=1
--group by Center_Name




select @Enrollments_mtd  =  sum(Enrolled)  --- MTD
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) BETWEEN DATEADD(mm, DATEDIFF(mm,0,@E_DOCDATE), 0) AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))
and Enrolled=1
--group by Center_Name




select @Enrollments_wtd =  sum(Enrolled)   --- WTD
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,CreatedOn)) BETWEEN  DATEADD(WW, DATEDIFF(WW,0,@E_DOCDATE), 0)  AND  DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))
and Enrolled=1
--group by Center_Name



select @refunds_YTD  = count(*)    ---    YTD
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,Contact_date)) >= DATEADD(yy, DATEDIFF(yy,0,@B_DOCDATE), 0)  and Year(Contact_date) = Year(@B_DOCDATE) and DateAdd(dd,0,DateDiff(dd,0,Contact_date)) <= @E_DOCDATE
and statuscode = 854390002 and statuscodename<>'closed' 
and Refund=1
--group by Center_Name

select @refunds_MTD = count(*)    --- MTD
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,Contact_date)) between  DATEADD(mm, DATEDIFF(mm,0,@E_DOCDATE), 0) and DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE )) and Refund=1 and statuscodename<>'closed'
--and statuscode = 854390002 and statuscodename<>'closed'
--group by Center_Name


select @refunds_WTD = count(*)    --- WTD
from #table1 
WHERE
DateAdd(dd,0,DateDiff(dd,0,Contact_date)) between  DATEADD(ww, DATEDIFF(ww,0,@E_DOCDATE), 0)   and DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE)) and Refund=1 and statuscodename<>'closed'
--and statuscode = 854390002 and statuscodename<>'closed'
 and 
Refund=1

--select *
--from #table1 
--WHERE
--DateAdd(dd,0,DateDiff(dd,0,Contact_date)) between  DATEADD(ww, DATEDIFF(ww,0,@E_DOCDATE), 0)   and DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE )) and Refund=1 and statuscodename<>'closed'
--and statuscode = 854390002 and statuscodename<>'closed' and Refund=1
--group by Center_Name
------------------------

insert #DU1 (
DU1_Date,
SortOrder,
FieldName, 
FieldValue )


select @B_DOCDATE, 1,'Leads', isnull(@Today_Leads_Phone,0)+ isnull(@Today_Leads_email,0) +  isnull(@Today_Leads_enrollments,0)

union 

select @B_DOCDATE, 5,'Live - Phone Calls', isnull(@Today_Leads_Phone,0)  -- + isnull(@Today_Leads_email,0) +  isnull(@Today_Leads_enrollments,0)

union 

select @B_DOCDATE,10, 'Emails', isnull(@Today_Leads_email,0)

union 

select @B_DOCDATE,15, 'Enrollments', isnull(@Today_Leads_enrollments,0)

union  

select @B_DOCDATE, 20, 'Refunds' , isnull(@Today_Leads_refunds,0)

union 

select @B_DOCDATE, 25, 'Monthly Net' ,isnull(@Enrollments_mtd,0) - isnull(@refunds_MTD,0)      --- isnull(@Today_Leads_Phone,0)+ isnull(@Today_Leads_email,0) +  isnull(@Today_Leads_enrollments,0)- isnull(@Today_Leads_refunds,0)

union 
 
select @B_DOCDATE,30,'To Date:',  isnull(@Enrollments_to_date,0)

union 

select @B_DOCDATE, 35, 'Month:', isnull(@Enrollments_mtd,0)

union 

select @B_DOCDATE,40, 'Week:',  isnull(@Enrollments_wtd,0)

union 

select @B_DOCDATE,45, 'To Date:',  isnull(@refunds_YTD,0)

union 

select @B_DOCDATE, 50, 'Month:', isnull(@refunds_MTD,0)

union 

select @B_DOCDATE, 55, 'Week:', isnull(@refunds_WTD,0)



select 
DU1_Date,
SortOrder,
FieldName, 
FieldValue 
from #DU1

GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_sp] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_sp] TO [public]
GO
