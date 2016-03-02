CREATE TABLE [dbo].[AHR2EM02]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[COMPANY_I] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[HRSTATUS] [smallint] NOT NULL,
[SEPARATIONREASON_I] [smallint] NOT NULL,
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSNEMPIN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPERVISOR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2EM02] ADD CONSTRAINT [CK__AHR2EM02__CHANGE__74C49240] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2EM02] ADD CONSTRAINT [CK__AHR2EM02__EFFECT__75B8B679] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2EM02] ADD CONSTRAINT [PKAHR2EM02] PRIMARY KEY CLUSTERED  ([EMPID_I], [EFFECTIVEDATE_I], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2EM02] ON [dbo].[AHR2EM02] ([COMPANY_I], [DIVISION_I], [DEPARTMENTNAME_I], [POSITION_I], [EMPID_I], [EFFECTIVEDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2EM02].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[COMPANY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[DIVISION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[DEPARTMENTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[POSITION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2EM02].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2EM02].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2EM02].[SEPARATIONREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[RSNEMPIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[SUPERVISOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[LOCATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2EM02].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2EM02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2EM02].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2EM02].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[AHR2EM02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2EM02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2EM02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2EM02] TO [DYNGRP]
GO
