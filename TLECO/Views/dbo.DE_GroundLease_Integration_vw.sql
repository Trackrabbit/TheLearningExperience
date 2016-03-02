SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE  view [dbo].[DE_GroundLease_Integration_vw] as 
SELECT LH.[tle_leaseId]
      ,'16384' as CHRG_LNSQNBR
	  ,(row_number() over (partition by LH.tle_leasenum order by LH.TLE_GPSite)* 16384) as LNSEQNBR
      ,ISNULL(C.[tle_GLLocationCode],'') as tle_GLLocationCode
      ,C.TLE_GPSite 
	  ,CASE
	  WHEN C.[tle_CenterName] IS NULL THEN C.tle_name
	  ELSE C.[tle_CenterName]
	  END as tle_CenterName
      ,C.[tle_SquareFootage]
	  ,C.tle_locationDescription
	  ,CONVERT (date,LH.[CreatedOn]) as CreatedOn
      ,CONVERT (date,LH.[ModifiedOn]) as ModifiedOn
      ,LH.[statecode]
      ,LH.[statuscode]
      ,LH.[tle_name]
      ,LH.[tle_siteaddress1]
      ,LH.[tle_Zip]
      ,LH.[tle_city]
      ,LH.[tle_state]
      ,LH.[tle_siteaddress2]
      ,LH.[tle_county]
      ,LH.[tle_leasenum] as tle_leasenum
      ,CONVERT (date,LH.[tle_leasedate]) as tle_leasedate
      ,LH.[tle_landlord]
      ,LH.[tle_landlordcontact]
      ,LH.[tle_landlordaddress1]
      ,LH.[tle_landlordaddress2]
      ,LH.[tle_ziplandlord]
      ,LH.[tle_cityLandolordl]
      ,LH.[tle_statelandlord]
      ,LH.[tle_emaillandlord]
      ,LH.[tle_otherphone]
      ,LH.[tle_phonelandlord]
      ,LH.[tle_sitetype]
      ,LH.[tle_renttype]
      ,CONVERT (date,LH.[tle_rentcommencementdate]) as tle_rentcommencementdate
      ,CONVERT (date,LH.[tle_commencementdate]) as tle_commencementdate
      ,LH.[tle_salesman]
      ,LH.[tle_ffecost]
      ,LH.[tle_ffecost_Base]
      ,LH.[tle_sqfootage]
      ,LH.[tle_leasestatus]
      ,LH.[tle_ownership]
      ,LH.[tle_yearst]
      ,LH.[tle_options_t]
      ,LH.[tle_yearso]
      ,LH.[tle_Commencement]
      ,LH.[tle_rentcomtext]
      ,LH.[tle_rent]
      ,LH.[tle_securitydeposit]
      ,LH.[tle_firstyeartconcession]
      ,LH.[tle_commonareacosts]
      ,LH.[tle_reviewfee]
      ,LH.[tle_ls_term_renewaloptions]
      ,LH.[tle_ls_term_years]
      ,LH.[tle_ls_termrenewaloptionyears]
      ,LH.[tle_ls_rentcommbase]
      ,LH.[tle_guarantymaxla]
      ,LH.[tle_ls_guarantyreducedla]
      ,LH.[tle_ls_CenterName]
      ,LH.[tle_rentschedule]
      ,LH.[tle_ls_LeaseCharges]
	  ,LC.[tle_chargeid]
	  ,LC.[tle_billingfrequency]
	  ,LC.[tle_baseamountc]
	  ,RS.[tle_RentSqFtAmount]
	  ,RS.[tle_rentsqftamount_Base]
	  ,RS.[tle_TermLength]
	  ,CONVERT(date,RS.[tle_termstartd]) as tle_termstartd
	  ,CONVERT(date,RS.[tle_termendd]) as tle_termendd
	  ,RS.[tle_pctcbaseamount] as tle_pctcbaseamount
	  ,LL.accountnumber as VendorID
	  ,FirstDates.FirstStartdate
	  ,FirstDates.FirstENDDATE
	  ,LeaseDates.LeaseStartdate
	  ,LeaseDates.LeaseENDDate
	  ,RS.tle_name as termid
	  ,CASE
	  WHEN CONVERT(DATE, tle_termstartd) = CONVERT(DATE, LeaseDates.LeaseStartdate) THEN CAST((datediff(m,tle_termstartd, tle_termendd) +1) as VARCHAR(3)) + 'MONTH-F'
	  ELSE CAST((datediff(m,tle_termstartd, tle_termendd) +1) as VARCHAR(3)) + 'MONTH-R'
	  END AS TLE_TERMID
  FROM TLEPROD_MSCRM.[dbo].[tle_leaseBase] LH
  JOIN TLEPROD_MSCRM.[dbo].tle_centerbase C
  ON C.tle_centerid = LH.[tle_ls_CenterName]
  JOIN TLEPROD_MSCRM.[dbo].[tle_leasechargeBase] LC
  ON LH.[tle_leaseId] = LC.[tle_leaseId]
  JOIN TLEPROD_MSCRM.[dbo].[tle_rentscheduleBase] RS
  ON LH.[tle_leaseId] = RS.[tle_leaseId]
  LEFT JOIN TLEPROD_MSCRM.[dbo].accountbase LL
  ON LH.tle_landlord = LL.accountid
  JOIN 
  ( select 
  [tle_LeaseId]
  ,MIN(CONVERT (date,[tle_termstartd])) as FirstStartdate
  ,MIN(CONVERT (date,[tle_termendd])) as FirstENDDATE
  FROM TLEPROD_MSCRM.[dbo].[tle_rentscheduleBase]
GROUP BY tle_LeaseID) FirstDates
ON LH.[tle_leaseId] = FirstDates.[tle_leaseId]
JOIN
( select 
  [tle_LeaseId]
  ,MIN(CONVERT (date,[tle_termstartd])) as LeaseStartdate
  ,MAX(CONVERT (date,[tle_termendd])) as LeaseENDDATE

  FROM TLEPROD_MSCRM.[dbo].[tle_rentscheduleBase]
GROUP BY tle_LeaseID) LeaseDates
ON LH.[tle_leaseId] = LeaseDates.[tle_leaseId]
where C.[tle_SquareFootage] is not null





GO
GRANT SELECT ON  [dbo].[DE_GroundLease_Integration_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_GroundLease_Integration_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_GroundLease_Integration_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_GroundLease_Integration_vw] TO [DYNGRP]
GO
