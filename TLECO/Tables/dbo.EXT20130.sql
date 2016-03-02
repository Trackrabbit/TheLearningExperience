CREATE TABLE [dbo].[EXT20130]
(
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[Extender_SmartList_Num] [smallint] NOT NULL,
[SmartList_Prefix] [smallint] NOT NULL,
[Extender_SmartList_Keys_1] [smallint] NOT NULL,
[Extender_SmartList_Keys_2] [smallint] NOT NULL,
[Extender_SmartList_Keys_3] [smallint] NOT NULL,
[Extender_SmartList_Keys_4] [smallint] NOT NULL,
[Extender_SmartList_Keys_5] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20130] ADD CONSTRAINT [PKEXT20130] PRIMARY KEY NONCLUSTERED  ([Extender_Window_ID], [PRODID], [Extender_SmartList_Num]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20130] ON [dbo].[EXT20130] ([PRODID], [Extender_SmartList_Num], [SmartList_Prefix]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20130].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[Extender_SmartList_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[SmartList_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[Extender_SmartList_Keys_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[Extender_SmartList_Keys_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[Extender_SmartList_Keys_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[Extender_SmartList_Keys_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20130].[Extender_SmartList_Keys_5]'
GO
GRANT SELECT ON  [dbo].[EXT20130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20130] TO [DYNGRP]
GO
