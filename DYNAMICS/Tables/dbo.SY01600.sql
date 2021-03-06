CREATE TABLE [dbo].[SY01600]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WINNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STICKPIN] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01600] ADD CONSTRAINT [PKSY01600] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPNYNAM], [FORMNAME], [WINNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01600] ON [dbo].[SY01600] ([CMPNYNAM], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01600].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01600].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01600].[FORMNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01600].[WINNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01600].[STICKPIN]'
GO
GRANT SELECT ON  [dbo].[SY01600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01600] TO [DYNGRP]
GO
