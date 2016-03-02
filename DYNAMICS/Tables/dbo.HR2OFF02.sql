CREATE TABLE [dbo].[HR2OFF02]
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
ALTER TABLE [dbo].[HR2OFF02] ADD CONSTRAINT [CK__HR2OFF02__CHANGE__4D02B81A] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2OFF02] ADD CONSTRAINT [CK__HR2OFF02__DATEDU__4DF6DC53] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2OFF02] ADD CONSTRAINT [CK__HR2OFF02__HIREDA__4EEB008C] CHECK ((datepart(hour,[HIREDATE_I])=(0) AND datepart(minute,[HIREDATE_I])=(0) AND datepart(second,[HIREDATE_I])=(0) AND datepart(millisecond,[HIREDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2OFF02] ADD CONSTRAINT [PKHR2OFF02] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [IINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2OFF02].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2OFF02].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2OFF02].[HIREDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2OFF02].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2OFF02].[SALARYHIGH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2OFF02].[COMPENSATIONPERIOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[MANAGER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2OFF02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2OFF02].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2OFF02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2OFF02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2OFF02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2OFF02] TO [DYNGRP]
GO
