CREATE TABLE [dbo].[HR2SAL01]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[WAGE_I] [numeric] (19, 5) NOT NULL,
[COMPENSATIONPERIOD_I] [smallint] NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTPREM] [numeric] (19, 5) NOT NULL,
[ANNUALSALARY_I] [numeric] (19, 5) NOT NULL,
[PTHOURS_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2SAL01] ADD CONSTRAINT [CK__HR2SAL01__CHANGE__50DC3785] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2SAL01] ADD CONSTRAINT [CK__HR2SAL01__EFFECT__51D05BBE] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2SAL01] ADD CONSTRAINT [PKHR2SAL01] PRIMARY KEY CLUSTERED  ([EMPID_I], [EFFECTIVEDATE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2SAL01].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2SAL01].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2SAL01].[WAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2SAL01].[COMPENSATIONPERIOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2SAL01].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2SAL01].[SHFTPREM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2SAL01].[ANNUALSALARY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2SAL01].[PTHOURS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2SAL01].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2SAL01].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2SAL01].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2SAL01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2SAL01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2SAL01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2SAL01] TO [DYNGRP]
GO
