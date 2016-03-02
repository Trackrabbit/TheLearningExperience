SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE view [dbo].[DE_GroundLease_LeaseReport_Detail_vw] as
with CTE_Base (tle_Leasenum, TLE_TERMID, Schedulename, tle_leaseid, tle_termstartd, TLE_termlength, tle_baseamountc, tle_pctcbaseamount, tle_SquareFootage, begin_Date, End_Date, frequency)
as
(select tle_Leasenum, TLE_TERMID, Schedulename, tle_leaseid, tle_termstartd
,TLE_termlength, tle_baseamountc, tle_pctcbaseamount,  tle_SquareFootage, tle_termstartd, dateadd(MM, TLE_termlength-1, tle_termstartd), 1
from DE_GroundLease_LeaseReport_vw)

,CTE_Level1 (tle_Leasenum, TLE_TERMID, Schedulename, tle_leaseid, tle_termstartd, TLE_termlength, tle_baseamountc, tle_pctcbaseamount, tle_SquareFootage, 
begin_Date, End_Date, frequency)
as

(select tle_Leasenum, TLE_TERMID, Schedulename, tle_leaseid, tle_termstartd, TLE_termlength, tle_baseamountc, tle_pctcbaseamount, tle_SquareFootage, 
begin_Date, End_Date, frequency from CTE_Base
union all
select tle_Leasenum, TLE_TERMID, Schedulename, tle_leaseid, dateadd(MM, Frequency, tle_termstartd), TLE_termlength, tle_baseamountc, tle_pctcbaseamount, 
tle_SquareFootage, begin_Date, End_Date, frequency
from CTE_Level1
where dateadd(MM, Frequency, tle_termstartd)

between begin_Date and end_date)

select [tle_Leasenum]
      ,Schedulename
	  ,tle_leaseid
	  ,tle_baseamountc as baserentamount
	  ,tle_SquareFootage
	  ,tle_pctcbaseamount
	  ,CEILING(CAST((row_number() over (partition by tle_leasenum order by tle_termstartd)) as float)/12) as Year1
	  ,(([tle_baseamountc] * tle_pctcbaseamount) / 100) AS   Rentsqfoot
	  ,ISNULL((((tle_baseamountc * tle_SquareFootage) *  (tle_pctcbaseamount))/100),0) as annualamaount
	  ,ISNULL(((((tle_baseamountc * tle_SquareFootage) *  (tle_pctcbaseamount))/100)/12),0) as  monthlyamount
	  ,begin_Date
	  ,End_Date
	  ,tle_termstartd
	 -- ,tle_pctcbaseamount - 100 Increase
   ,tle_pctcbaseamount Increase
from CTE_Level1
where tle_termstartd between Begin_Date and End_Date
 --option (maxrecursion 300)

GO
GRANT SELECT ON  [dbo].[DE_GroundLease_LeaseReport_Detail_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_GroundLease_LeaseReport_Detail_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_GroundLease_LeaseReport_Detail_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_GroundLease_LeaseReport_Detail_vw] TO [DYNGRP]
GO
