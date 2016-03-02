CREATE TABLE [dbo].[SY08100]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SectionID] [smallint] NOT NULL,
[DICTID] [smallint] NOT NULL,
[COLNUMBR] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Visible] [tinyint] NOT NULL,
[MetricSequence] [int] NOT NULL,
[Selected] [tinyint] NOT NULL,
[Mode] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY08100] ADD CONSTRAINT [PKSY08100] PRIMARY KEY NONCLUSTERED  ([USERID], [SectionID], [MetricSequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY08100] ON [dbo].[SY08100] ([USERID], [COLNUMBR], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[SectionID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[COLNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[Visible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[MetricSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[Selected]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08100].[Mode]'
GO
GRANT SELECT ON  [dbo].[SY08100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY08100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY08100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY08100] TO [DYNGRP]
GO
