CREATE TABLE [dbo].[UPR30603]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[RELATIONSHIP] [smallint] NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDDLEINITIAL] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[DEPENDENTSSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GENDER] [smallint] NOT NULL,
[FLTMSTDNTCB] [tinyint] NOT NULL,
[HOMEPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXTENSION] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HealthInsDependentCov] [smallint] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30603] ADD CONSTRAINT [CK__UPR30603__BRTHDA__2D8CA090] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR30603] ADD CONSTRAINT [CK__UPR30603__Effect__2E80C4C9] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR30603] ADD CONSTRAINT [PKUPR30603] PRIMARY KEY CLUSTERED  ([EMPLOYID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30603].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30603].[RELATIONSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[MIDDLEINITIAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30603].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[DEPENDENTSSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30603].[GENDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30603].[FLTMSTDNTCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[HOMEPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[WORKPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[EXTENSION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30603].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30603].[HealthInsDependentCov]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30603].[Effective_Date]'
GO
GRANT SELECT ON  [dbo].[UPR30603] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30603] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30603] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30603] TO [DYNGRP]
GO
