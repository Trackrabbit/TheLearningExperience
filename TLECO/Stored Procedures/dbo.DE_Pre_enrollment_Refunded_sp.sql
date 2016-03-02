SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



--exec [dbo].[DE_Pre_enrollment_Refunded_sp] '01-01-2015','02-21-2015'

CREATE  procedure [dbo].[DE_Pre_enrollment_Refunded_sp] @B_DOCDATE datetime, @E_DOCDATE datetime as 


--DECLARE @B_DOCDATE datetime
--DECLARE @E_DOCDATE datetime
--SET @B_DOCDATE = '01-01-2015' --  GETDATE()
--SET @e_DOCDATE = '02-21-2015' --  GETDATE()

select 
Center_Name
,sum(Refund) Refund
from
(
select 
TC.[tle_name] Center_Name
,case when CH.tle_pe_status = 854390002 then 1 else 0 End 'Refund'
,isnull(ch.[tle_refunddate],FC.tle_refundprocessedon) tle_refundprocessedon 
from [TLEPROD_MSCRM].[dbo].[Filteredcontact] FC
left outer join [TLEPROD_MSCRM].[dbo].[tle_childBase] CH  on CH.[tle_leadid]  = FC.originatingleadid 
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_center] TC on TC.[tle_centerid] = FC.[tle_centerid] 
where
CH.tle_pe_status = 854390002
and tc.statuscodename<>'closed'
and DateAdd(dd,0,DateDiff(dd,0,ch.tle_RefundDate)) BETWEEN  DateAdd(dd,0,DateDiff(dd,0,@B_DOCDATE )) AND DateAdd(dd,0,DateDiff(dd,0,@E_DOCDATE ))
) j1
group by
Center_Name


-- CHILD 
--854390000 interested
--854390001 enrolled
--854390002 refunded
--854390003 inactive 

GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Refunded_sp] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_Refunded_sp] TO [public]
GO
