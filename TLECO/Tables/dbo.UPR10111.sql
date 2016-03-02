CREATE TABLE [dbo].[UPR10111]
(
[YEAR1] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MonthofCoverage_1] [smallint] NOT NULL,
[MonthofCoverage_2] [smallint] NOT NULL,
[MonthofCoverage_3] [smallint] NOT NULL,
[MonthofCoverage_4] [smallint] NOT NULL,
[MonthofCoverage_5] [smallint] NOT NULL,
[MonthofCoverage_6] [smallint] NOT NULL,
[MonthofCoverage_7] [smallint] NOT NULL,
[MonthofCoverage_8] [smallint] NOT NULL,
[MonthofCoverage_9] [smallint] NOT NULL,
[MonthofCoverage_10] [smallint] NOT NULL,
[MonthofCoverage_11] [smallint] NOT NULL,
[MonthofCoverage_12] [smallint] NOT NULL,
[MonthofCost_1] [numeric] (19, 5) NOT NULL,
[MonthofCost_2] [numeric] (19, 5) NOT NULL,
[MonthofCost_3] [numeric] (19, 5) NOT NULL,
[MonthofCost_4] [numeric] (19, 5) NOT NULL,
[MonthofCost_5] [numeric] (19, 5) NOT NULL,
[MonthofCost_6] [numeric] (19, 5) NOT NULL,
[MonthofCost_7] [numeric] (19, 5) NOT NULL,
[MonthofCost_8] [numeric] (19, 5) NOT NULL,
[MonthofCost_9] [numeric] (19, 5) NOT NULL,
[MonthofCost_10] [numeric] (19, 5) NOT NULL,
[MonthofCost_11] [numeric] (19, 5) NOT NULL,
[MonthofCost_12] [numeric] (19, 5) NOT NULL,
[MonthofSafeHarbor_1] [smallint] NOT NULL,
[MonthofSafeHarbor_2] [smallint] NOT NULL,
[MonthofSafeHarbor_3] [smallint] NOT NULL,
[MonthofSafeHarbor_4] [smallint] NOT NULL,
[MonthofSafeHarbor_5] [smallint] NOT NULL,
[MonthofSafeHarbor_6] [smallint] NOT NULL,
[MonthofSafeHarbor_7] [smallint] NOT NULL,
[MonthofSafeHarbor_8] [smallint] NOT NULL,
[MonthofSafeHarbor_9] [smallint] NOT NULL,
[MonthofSafeHarbor_10] [smallint] NOT NULL,
[MonthofSafeHarbor_11] [smallint] NOT NULL,
[MonthofSafeHarbor_12] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10111] ADD CONSTRAINT [CK__UPR10111__CHANGE__4934BB05] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR10111] ADD CONSTRAINT [PKUPR10111] PRIMARY KEY CLUSTERED  ([YEAR1], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10111].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofCoverage_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10111].[MonthofCost_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10111].[MonthofSafeHarbor_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10111].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10111].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR10111] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10111] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10111] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10111] TO [DYNGRP]
GO
