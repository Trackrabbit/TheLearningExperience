CREATE TABLE [dbo].[SY08000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISPHP] [tinyint] NOT NULL,
[REFRSHHP] [tinyint] NOT NULL,
[User_Role] [smallint] NOT NULL,
[ColumnLayout] [smallint] NOT NULL,
[ColumnStackPosition] [smallint] NOT NULL,
[Mode] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY08000] ADD CONSTRAINT [PKSY08000] PRIMARY KEY NONCLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08000].[DISPHP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08000].[REFRSHHP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08000].[User_Role]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08000].[ColumnLayout]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08000].[ColumnStackPosition]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08000].[Mode]'
GO
GRANT SELECT ON  [dbo].[SY08000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY08000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY08000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY08000] TO [DYNGRP]
GO
