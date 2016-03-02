CREATE TABLE [dbo].[UPR10108]
(
[YEAR1] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[HealthInsDependentCov] [smallint] NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDDLEINITIAL] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPENDENTSSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10108] ADD CONSTRAINT [CK__UPR10108__BRTHDA__3CCEE420] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10108] ADD CONSTRAINT [CK__UPR10108__CHANGE__3DC30859] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR10108] ADD CONSTRAINT [CK__UPR10108__Effect__3EB72C92] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR10108] ADD CONSTRAINT [PKUPR10108] PRIMARY KEY CLUSTERED  ([YEAR1], [EMPLOYID], [SEQNUMBR], [Effective_Date]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10108].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10108].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10108].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10108].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10108].[HealthInsDependentCov]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10108].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10108].[MIDDLEINITIAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10108].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10108].[DEPENDENTSSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10108].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10108].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10108].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR10108] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10108] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10108] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10108] TO [DYNGRP]
GO
