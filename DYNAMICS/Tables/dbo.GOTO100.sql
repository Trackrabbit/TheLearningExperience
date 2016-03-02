CREATE TABLE [dbo].[GOTO100]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[GoTo_Description] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GOTO100] ADD CONSTRAINT [PKGOTO100] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GOTO100].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GOTO100].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GOTO100].[GoTo_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GOTO100].[GoTo_Type]'
GO
GRANT SELECT ON  [dbo].[GOTO100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GOTO100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GOTO100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GOTO100] TO [DYNGRP]
GO
