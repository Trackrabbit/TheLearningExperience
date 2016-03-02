SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO







CREATE  view [dbo].[DE_GroundLease_LeaseReport_vw] as 
SELECT 

      C.TLE_GPSite 
	  ,CASE
	  WHEN C.[tle_CenterName] IS NULL THEN C.tle_name
	  ELSE C.[tle_CenterName]
	  END as tle_CenterName
      ,C.[tle_SquareFootage]
      ,LH.[tle_name]
	  ,RS.tle_name as Schedulename
      ,LH.[tle_leasenum] as tle_leasenum
      ,LH.[tle_leasestatus]
      ,LH.[tle_ls_CenterName]
      ,LH.[tle_rentschedule]
	  ,LC.[tle_chargeid]
	  ,LC.[tle_baseamountc]
	  ,LH.tle_leaseid
	  ,row_number() over (partition by LH.tle_leasenum order by tle_termstartd) as schd_row
	  ,(datediff(m,tle_termstartd, tle_termendd) +1) as [tle_TermLength]
	  ,CONVERT(date,RS.[tle_termstartd]) as tle_termstartd
	  ,CONVERT(date,RS.[tle_termendd]) as tle_termendd
	  ,RS.[tle_pctcbaseamount]  as tle_pctcbaseamount
	  -- ,ISNULL((CONVERT(decimal(18, 4),(tle_pctcbaseamount)) -  CONVERT(decimal (18,4),LAG(tle_pctcbaseamount) Over (Partition by LH.tle_Leasenum order by LH.tle_Leasenum, RS.tle_name)))/100,0)+1 as ratechange
	  ,LeaseDates.LeaseStartdate
	  ,LeaseDates.LeaseENDDate
	  ,CASE
	  WHEN CONVERT(DATE, tle_termstartd) = CONVERT(DATE, LeaseDates.LeaseStartdate) THEN CAST((datediff(m,tle_termstartd, tle_termendd) +1) as VARCHAR(3)) + 'MONTH-F'
	  ELSE CAST((datediff(m,tle_termstartd, tle_termendd) +1) as VARCHAR(3)) + 'MONTH-R'
	  END AS TLE_TERMID
 FROM TLEPROD_MSCRM.dbo.[tle_leaseBase] LH
  JOIN TLEPROD_MSCRM.dbo.tle_centerbase C
  ON C.tle_centerid = LH.[tle_ls_CenterName]
  JOIN TLEPROD_MSCRM.dbo.[tle_leasechargeBase] LC
  ON LH.[tle_leaseId] = LC.[tle_leaseId]
  JOIN TLEPROD_MSCRM.dbo.[tle_rentscheduleBase] RS
  ON LH.[tle_leaseId] = RS.[tle_leaseId]
  LEFT JOIN TLEPROD_MSCRM.dbo.accountbase LL
  ON LH.tle_landlord = LL.accountid
  JOIN 
  ( select 
  [tle_LeaseId]
  ,MIN(CONVERT (date,[tle_termstartd])) as FirstStartdate
  ,MIN(CONVERT (date,[tle_termendd])) as FirstENDDATE
  FROM TLEPROD_MSCRM.dbo.[tle_rentscheduleBase]
GROUP BY tle_LeaseID) FirstDates
ON LH.[tle_leaseId] = FirstDates.[tle_leaseId]
JOIN
( select 
  [tle_LeaseId]
  ,MIN(CONVERT (date,[tle_termstartd])) as LeaseStartdate
  ,MAX(CONVERT (date,[tle_termendd])) as LeaseENDDATE

  FROM TLEPROD_MSCRM.dbo.[tle_rentscheduleBase]
GROUP BY tle_LeaseID) LeaseDates
ON LH.[tle_leaseId] = LeaseDates.[tle_leaseId]
--where LH.[tle_leasenum] = 'LS-1FL3343303'










GO
GRANT SELECT ON  [dbo].[DE_GroundLease_LeaseReport_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_GroundLease_LeaseReport_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_GroundLease_LeaseReport_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_GroundLease_LeaseReport_vw] TO [DYNGRP]
GO
