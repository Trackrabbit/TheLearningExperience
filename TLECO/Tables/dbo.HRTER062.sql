CREATE TABLE [dbo].[HRTER062]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[OPINION_I] [smallint] NOT NULL,
[JOBSATISFACTION_I] [smallint] NOT NULL,
[TRAINING_I] [smallint] NOT NULL,
[PROMOTION_I] [smallint] NOT NULL,
[WAGESCALE_I] [smallint] NOT NULL,
[COMPANYBENIFITS_I] [smallint] NOT NULL,
[WORKERS_I] [smallint] NOT NULL,
[ORGANIZE_I] [smallint] NOT NULL,
[LEADER_I] [smallint] NOT NULL,
[FEEDBACK_I] [smallint] NOT NULL,
[CRITICISM_I] [smallint] NOT NULL,
[CONDITIONS_I] [smallint] NOT NULL,
[IHOURSWORKED_I] [smallint] NOT NULL,
[CHNGIMPROVEMNTS_I] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NEWJOB_I] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONFIDENTIAL_I] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRTER062] ADD CONSTRAINT [CK__HRTER062__IDATE___7D79D3D2] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRTER062] ADD CONSTRAINT [PKHRTER062] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTER062].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRTER062].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[OPINION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[JOBSATISFACTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[TRAINING_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[PROMOTION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[WAGESCALE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[COMPANYBENIFITS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[WORKERS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[ORGANIZE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[LEADER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[FEEDBACK_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[CRITICISM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[CONDITIONS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[IHOURSWORKED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTER062].[CHNGIMPROVEMNTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTER062].[NEWJOB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRTER062].[CONFIDENTIAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRTER062].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[HRTER062] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRTER062] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRTER062] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRTER062] TO [DYNGRP]
GO
