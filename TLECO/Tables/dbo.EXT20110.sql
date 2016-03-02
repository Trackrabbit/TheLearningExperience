CREATE TABLE [dbo].[EXT20110]
(
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[PRODID] [smallint] NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_1] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_2] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_3] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_4] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_5] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20110] ADD CONSTRAINT [PKEXT20110] PRIMARY KEY NONCLUSTERED  ([Extender_Window_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20110] ON [dbo].[EXT20110] ([Extender_Window_ID], [PRODID], [TABLTECH]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20110].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20110].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[Extender_Key_Fields_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[Extender_Key_Fields_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[Extender_Key_Fields_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[Extender_Key_Fields_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20110].[Extender_Key_Fields_5]'
GO
GRANT SELECT ON  [dbo].[EXT20110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20110] TO [DYNGRP]
GO
