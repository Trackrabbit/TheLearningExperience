SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[DE_GroundLease_RentSchedule_vw]
AS
SELECT        TOP (100) PERCENT REPLACE(LH.BSSI_Ground_Lease_Number, 'LND', '') AS LeaseNumber, LH.LOCNCODE AS GPSite, LH.VENDORID, LE.BSSI_Charge_ID AS ChargeID, LE.STRTDATE AS Start_Date, 
                         LE.ENDDATE AS End_Date, LE.BSSI_Sales_Amount AS Rent_Amount
FROM            dbo.B4602900 AS LH INNER JOIN
                         dbo.B4602943 AS LE ON LH.BSSI_Ground_Lease_Number = LE.BSSI_Ground_Lease_Number
ORDER BY Start_Date
GO
GRANT SELECT ON  [dbo].[DE_GroundLease_RentSchedule_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_GroundLease_RentSchedule_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_GroundLease_RentSchedule_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_GroundLease_RentSchedule_vw] TO [DYNGRP]
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[5] 3) )"
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
               Bottom = 136
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LE"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 277
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
', 'SCHEMA', N'dbo', 'VIEW', N'DE_GroundLease_RentSchedule_vw', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'DE_GroundLease_RentSchedule_vw', NULL, NULL
GO
