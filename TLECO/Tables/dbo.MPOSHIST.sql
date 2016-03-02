CREATE TABLE [dbo].[MPOSHIST]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPANY_I] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[SUPERVISOR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTE] [numeric] (19, 5) NOT NULL,
[REVISIONLEVEL_I] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MPOSHIST] ADD CONSTRAINT [CK__MPOSHIST__CHANGE__0EA45FD4] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[MPOSHIST] ADD CONSTRAINT [CK__MPOSHIST__CHANGE__0DB03B9B] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[MPOSHIST] ADD CONSTRAINT [CK__MPOSHIST__Effect__0F98840D] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[MPOSHIST] ADD CONSTRAINT [PKMPOSHIST] PRIMARY KEY CLUSTERED  ([EMPID_I], [CHANGEDATE_I], [CHANGETIME_I], [DIVISION_I], [DEPARTMENTNAME_I], [POSITION_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MPOSHIST].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MPOSHIST].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[POSITION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[COMPANY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[DIVISION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[DEPARTMENTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MPOSHIST].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[SUPERVISOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[LOCATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MPOSHIST].[FTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MPOSHIST].[REVISIONLEVEL_I]'
GO
GRANT SELECT ON  [dbo].[MPOSHIST] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MPOSHIST] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MPOSHIST] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MPOSHIST] TO [DYNGRP]
GO
