CREATE TABLE [dbo].[SY08120]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SectionID] [smallint] NOT NULL,
[SubSectionID] [smallint] NOT NULL,
[DICTID] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Visible] [tinyint] NOT NULL,
[SubSectionUserDefined] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY08120] ADD CONSTRAINT [PKSY08120] PRIMARY KEY NONCLUSTERED  ([USERID], [SectionID], [SubSectionID], [DICTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY08120] ON [dbo].[SY08120] ([USERID], [SectionID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08120].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08120].[SectionID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08120].[SubSectionID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08120].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08120].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08120].[Visible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08120].[SubSectionUserDefined]'
GO
GRANT SELECT ON  [dbo].[SY08120] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY08120] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY08120] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY08120] TO [DYNGRP]
GO
