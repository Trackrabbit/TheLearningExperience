CREATE TABLE [dbo].[UPR10109]
(
[YEAR1] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDDLEINITIAL] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPENDENTSSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[CoveredForYear] [tinyint] NOT NULL,
[CoveredMonth_1] [tinyint] NOT NULL,
[CoveredMonth_2] [tinyint] NOT NULL,
[CoveredMonth_3] [tinyint] NOT NULL,
[CoveredMonth_4] [tinyint] NOT NULL,
[CoveredMonth_5] [tinyint] NOT NULL,
[CoveredMonth_6] [tinyint] NOT NULL,
[CoveredMonth_7] [tinyint] NOT NULL,
[CoveredMonth_8] [tinyint] NOT NULL,
[CoveredMonth_9] [tinyint] NOT NULL,
[CoveredMonth_10] [tinyint] NOT NULL,
[CoveredMonth_11] [tinyint] NOT NULL,
[CoveredMonth_12] [tinyint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10109] ADD CONSTRAINT [CK__UPR10109__BRTHDA__4193993D] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10109] ADD CONSTRAINT [CK__UPR10109__CHANGE__4287BD76] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR10109] ADD CONSTRAINT [PKUPR10109] PRIMARY KEY CLUSTERED  ([YEAR1], [EMPLOYID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10109].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10109].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10109].[MIDDLEINITIAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10109].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10109].[DEPENDENTSSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10109].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredForYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10109].[CoveredMonth_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10109].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10109].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR10109] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10109] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10109] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10109] TO [DYNGRP]
GO
