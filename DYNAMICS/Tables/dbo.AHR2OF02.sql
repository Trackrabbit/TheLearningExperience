CREATE TABLE [dbo].[AHR2OF02]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[IINDEX_I] [smallint] NOT NULL,
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HIREDATE_I] [datetime] NOT NULL,
[DATEDUE_I] [datetime] NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALARYHIGH_I] [numeric] (19, 5) NOT NULL,
[COMPENSATIONPERIOD_I] [smallint] NOT NULL,
[MANAGER_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2OF02] ADD CONSTRAINT [CK__AHR2OF02__CHANGE__7545B39E] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2OF02] ADD CONSTRAINT [CK__AHR2OF02__DATEDU__7639D7D7] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2OF02] ADD CONSTRAINT [CK__AHR2OF02__HIREDA__772DFC10] CHECK ((datepart(hour,[HIREDATE_I])=(0) AND datepart(minute,[HIREDATE_I])=(0) AND datepart(second,[HIREDATE_I])=(0) AND datepart(millisecond,[HIREDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2OF02] ADD CONSTRAINT [PKAHR2OF02] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [IINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2OF02].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2OF02].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2OF02].[HIREDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2OF02].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2OF02].[SALARYHIGH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2OF02].[COMPENSATIONPERIOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[MANAGER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2OF02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2OF02].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[AHR2OF02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2OF02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2OF02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2OF02] TO [DYNGRP]
GO
