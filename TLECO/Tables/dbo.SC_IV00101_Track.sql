CREATE TABLE [dbo].[SC_IV00101_Track]
(
[Sequence] [bigint] NOT NULL IDENTITY(1, 1),
[MapId] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [bigint] NOT NULL,
[Processed] [bit] NOT NULL,
[DateCreated] [datetime] NOT NULL,
[DateProcessed] [datetime] NOT NULL,
[Action] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index3] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index4] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index5] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index6] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index7] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index8] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index9] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Index10] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SC_IV00101_Track] ADD CONSTRAINT [PK_SC_IV00101_Track] PRIMARY KEY CLUSTERED  ([Sequence]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SC_IV00101_Track] ON [dbo].[SC_IV00101_Track] ([MapId], [Processed]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SC_IV00101_Track].[DateCreated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SC_IV00101_Track].[DateProcessed]'
GO
GRANT REFERENCES ON  [dbo].[SC_IV00101_Track] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SC_IV00101_Track] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SC_IV00101_Track] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SC_IV00101_Track] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SC_IV00101_Track] TO [DYNGRP]
GO
