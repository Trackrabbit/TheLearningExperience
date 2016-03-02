SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[DE_GroundLease_Integration_HDR_vw]
AS
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
	  ,LH.tle_ls_leaseStatus
      ,CONVERT (date,LH.[tle_rentcommencementdate]) as tle_rentcommencementdate
      ,CONVERT (date,LH.[tle_commencementdate]) as tle_commencementdate
      ,LH.[tle_Commencement]
      ,LH.[tle_rent]
      ,LH.[tle_ls_CenterName]
      ,LH.[tle_rentschedule]
      ,LH.[tle_ls_LeaseCharges]
  ,LC.[tle_chargeid]
  ,LC.[tle_billingfrequency]
 ,((LC.[tle_baseamountc] * C.[tle_SquareFootage]) /12) as tle_baseamountc

	  ,RS.[tle_RentSqFtAmount]
	  ,RS.[tle_rentsqftamount_Base]
	  ,RS.[tle_TermLength]
	  ,CONVERT(date,RS.[tle_termstartd]) as tle_termstartd
	  ,CONVERT(date,RS.[tle_termendd]) as tle_termendd
	  ,CASE 
	  WHEN RS.[tle_pctcbaseamount] < 100 THEN -1 * RS.[tle_pctcbaseamount]
	  ELSE RS.[tle_pctcbaseamount] - 100 
	  END as tle_pctcbaseamount
	  ,LL.accountnumber as VendorID
	  ,FirstDates.FirstStartdate
	  ,FirstDates.FirstENDDATE
	  ,LeaseDates.LeaseStartdate
	  ,LeaseDates.LeaseENDDate
	  ,RS.tle_name as termid
	  ,CASE
	  WHEN RS.tle_name like 'Concession%' THEN RS.tle_name
	  WHEN CONVERT(DATE, tle_termstartd) = CONVERT(DATE, LeaseDates.LeaseStartdate) THEN CAST((datediff(m,tle_termstartd, tle_termendd) +1) as VARCHAR(3)) + 'MONTH-F'
	  ELSE CAST((datediff(m,tle_termstartd, tle_termendd) +1) as VARCHAR(3)) + 'MONTH-R'
	  END AS TLE_TERMID
  FROM TLEPROD_MSCRM.[dbo].[tle_leaseBase] LH
  JOIN TLEPROD_MSCRM.dbo.tle_centerbase C
  ON C.tle_centerid = LH.[tle_ls_CenterName]
  JOIN TLEPROD_MSCRM.[dbo].[tle_leasechargeBase] LC
  ON LH.[tle_leaseId] = LC.[tle_leaseId]
  JOIN TLEPROD_MSCRM.[dbo].[tle_rentscheduleBase] RS
  ON LH.[tle_leaseId] = RS.[tle_leaseId]
  LEFT JOIN TLEPROD_MSCRM.dbo.accountbase LL
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
where LH.tle_ls_leaseStatus = '854390002'
and LeaseDates.LeaseStartdate is not null

   


GO
GRANT SELECT ON  [dbo].[DE_GroundLease_Integration_HDR_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_GroundLease_Integration_HDR_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_GroundLease_Integration_HDR_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_GroundLease_Integration_HDR_vw] TO [DYNGRP]
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'DE_GroundLease_Integration_HDR_vw', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'DE_GroundLease_Integration_HDR_vw', NULL, NULL
GO
