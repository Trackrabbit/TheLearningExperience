CREATE TABLE [dbo].[AHRAP003]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[APPINTTYPECODE_I] [smallint] NOT NULL,
[APPINTTYPESTR_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLYDATE_I] [datetime] NOT NULL,
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[REVIEWRATINGDECIMA_I] [numeric] (19, 5) NOT NULL,
[REVIEWRANGE_I] [smallint] NOT NULL,
[WEIGHTSUM_I] [smallint] NOT NULL,
[TOTALWEIGHT_I] [smallint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHRAP003] ADD CONSTRAINT [CK__AHRAP003__APPLYD__7A0A68BB] CHECK ((datepart(hour,[APPLYDATE_I])=(0) AND datepart(minute,[APPLYDATE_I])=(0) AND datepart(second,[APPLYDATE_I])=(0) AND datepart(millisecond,[APPLYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRAP003] ADD CONSTRAINT [CK__AHRAP003__EFFECT__7AFE8CF4] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRAP003] ADD CONSTRAINT [PKAHRAP003] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [APPINTTYPECODE_I], [APPLYDATE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1AHRAP003] ON [dbo].[AHRAP003] ([APPLICANTNUMBER_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AHRAP003] ON [dbo].[AHRAP003] ([COMPANYCODE_I], [DIVISIONCODE_I], [DEPARTMENTCODE_I], [POSITIONCODE_I], [EFFECTIVEDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHRAP003] ON [dbo].[AHRAP003] ([COMPANYCODE_I], [DIVISIONCODE_I], [DEPARTMENTCODE_I], [POSITIONCODE_I], [REVIEWRATINGDECIMA_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5AHRAP003] ON [dbo].[AHRAP003] ([REVIEWRATINGDECIMA_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRAP003].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRAP003].[APPINTTYPECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRAP003].[APPINTTYPESTR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRAP003].[APPLYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRAP003].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRAP003].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRAP003].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRAP003].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRAP003].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRAP003].[REVIEWRATINGDECIMA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRAP003].[REVIEWRANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRAP003].[WEIGHTSUM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRAP003].[TOTALWEIGHT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRAP003].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AHRAP003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHRAP003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHRAP003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHRAP003] TO [DYNGRP]
GO
