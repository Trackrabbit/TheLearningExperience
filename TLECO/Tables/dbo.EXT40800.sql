CREATE TABLE [dbo].[EXT40800]
(
[Extender_Menu_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Menu_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Toolbar_Group] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT40800] ADD CONSTRAINT [CK__EXT40800__CREATD__59148665] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT40800] ADD CONSTRAINT [CK__EXT40800__MODIFD__5A08AA9E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT40800] ADD CONSTRAINT [PKEXT40800] PRIMARY KEY NONCLUSTERED  ([Extender_Menu_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT40800] ON [dbo].[EXT40800] ([Extender_Menu_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT40800] ON [dbo].[EXT40800] ([Toolbar_Group], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40800].[Extender_Menu_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40800].[Extender_Menu_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40800].[Toolbar_Group]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT40800].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT40800].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40800].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT40800].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40800].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT40800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT40800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT40800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT40800] TO [DYNGRP]
GO
