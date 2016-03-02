CREATE TABLE [dbo].[HR2EMP02]
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
ALTER TABLE [dbo].[HR2EMP02] ADD CONSTRAINT [CK__HR2EMP02__CHANGE__343FF8D7] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2EMP02] ADD CONSTRAINT [CK__HR2EMP02__EFFECT__35341D10] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2EMP02] ADD CONSTRAINT [PKHR2EMP02] PRIMARY KEY CLUSTERED  ([EMPID_I], [EFFECTIVEDATE_I], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2EMP02] ON [dbo].[HR2EMP02] ([COMPANY_I], [DIVISION_I], [DEPARTMENTNAME_I], [POSITION_I], [EMPID_I], [EFFECTIVEDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2EMP02].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[COMPANY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[DIVISION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[DEPARTMENTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[POSITION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2EMP02].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2EMP02].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2EMP02].[SEPARATIONREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[RSNEMPIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[SUPERVISOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[LOCATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2EMP02].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2EMP02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2EMP02].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2EMP02].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[HR2EMP02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2EMP02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2EMP02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2EMP02] TO [DYNGRP]
GO
