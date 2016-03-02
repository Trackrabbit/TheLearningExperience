SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[DE_Binary_Stream_Ground_Lease_vw]
AS
SELECT LH.bssi_ground_lease_number                         AS Lease_Number, 
       LH.NAME                                             AS Lease_Name, 
       LH.bssi_description                                 AS Lease_Description, 
       LH.locncode                                         AS GP_SiteID, 
       LH.vendorid                                         AS LandlordID, 
       LH.bssi_leasetypeid                                 AS Lease_TypeID, 
       CASE LH.bssi_tenant_lease_status 
         WHEN 2 THEN 'Active' 
         ELSE 'Other' 
       END                                                 AS Lease_Status, 
       LH.bssi_lease_commdt                                AS 
       Lease_Commencement_Date, 
       LH.bssi_lease_termination_d                         AS 
       Lease_Termination_Date, 
       LH.vendname                                         AS Landlord_Name, 
       LH.locndscr                                         AS 
       GP_Site_Description, 
       LT.total_guarantee, 
	   DATEPART(MM,LE.strtdate) as Period,
	   DATEPART(YY,LE.strtdate) as Year1,
       COALESCE (LB.guarantee_balance, LT.total_guarantee) AS Guarantee_Balance, 
       LE.bssi_ground_lease_number, 
       LE.strtdate                                         AS Billdate, 
       LE.bssi_sales_amount                                AS Bill_Amount, 
       LE.bssi_charge_escalation_a, 
       LE.docamnt, 
       LE.bssi_increase_amount, 
       LE.bssi_invoiced, 
       LE.doctype, 
       LE.vchnumwk, 
       LE.jrnentry 
FROM   dbo.b4602900 AS LH 
       INNER JOIN dbo.b4602940 AS LCH 
               ON LH.bssi_ground_lease_number = LCH.bssi_ground_lease_number 
       INNER JOIN dbo.b4602943 AS LE 
               ON LCH.bssi_ground_lease_number = LE.bssi_ground_lease_number 
                  AND LCH.lnitmseq = LE.lnitmseq 
       INNER JOIN (SELECT bssi_ground_lease_number, 
                          lnitmseq, 
                          Sum(bssi_sales_amount) AS Total_Guarantee 
                   FROM   dbo.b4602943 AS LE 
                   GROUP  BY bssi_ground_lease_number, 
                             lnitmseq) AS LT 
               ON LCH.bssi_ground_lease_number = LT.bssi_ground_lease_number 
                  AND LCH.lnitmseq = LT.lnitmseq 
       LEFT OUTER JOIN (SELECT bssi_ground_lease_number, 
                               lnitmseq, 
                               Sum(bssi_sales_amount) AS Guarantee_balance 
                        FROM   dbo.b4602943 AS LE 
                        WHERE  ( vchnumwk <> '' ) 
                        GROUP  BY bssi_ground_lease_number, 
                                  lnitmseq) AS LB 
                    ON LCH.bssi_ground_lease_number = 
                       LB.bssi_ground_lease_number 
                       AND LCH.lnitmseq = LB.lnitmseq 
GO
GRANT SELECT ON  [dbo].[DE_Binary_Stream_Ground_Lease_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_Binary_Stream_Ground_Lease_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_Binary_Stream_Ground_Lease_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_Binary_Stream_Ground_Lease_vw] TO [DYNGRP]
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
         Begin Table = "LH"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LCH"
            Begin Extent = 
               Top = 6
               Left = 324
               Bottom = 135
               Right = 571
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LE"
            Begin Extent = 
               Top = 6
               Left = 609
               Bottom = 135
               Right = 848
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LT"
            Begin Extent = 
               Top = 6
               Left = 886
               Bottom = 118
               Right = 1125
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LB"
            Begin Extent = 
               Top = 120
               Left = 886
               Bottom = 232
               Right = 1125
            End
            DisplayFlags = 280
            TopColumn = 0
         End
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
         O', 'SCHEMA', N'dbo', 'VIEW', N'DE_Binary_Stream_Ground_Lease_vw', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'utput = 720
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
', 'SCHEMA', N'dbo', 'VIEW', N'DE_Binary_Stream_Ground_Lease_vw', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'DE_Binary_Stream_Ground_Lease_vw', NULL, NULL
GO
