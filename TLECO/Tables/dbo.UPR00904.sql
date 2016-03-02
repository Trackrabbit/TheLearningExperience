CREATE TABLE [dbo].[UPR00904]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[HealthInsDependentCov] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00904] ADD CONSTRAINT [CK__UPR00904__CHANGE__352DC258] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00904] ADD CONSTRAINT [CK__UPR00904__Effect__3621E691] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR00904] ADD CONSTRAINT [PKUPR00904] PRIMARY KEY CLUSTERED  ([EMPLOYID], [SEQNUMBR], [Effective_Date]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00904].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00904].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00904].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00904].[HealthInsDependentCov]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00904].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00904].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR00904] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00904] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00904] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00904] TO [DYNGRP]
GO
