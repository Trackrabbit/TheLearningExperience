CREATE TABLE [dbo].[EXT40810]
(
[Extender_Page_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Page_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Navigation_Pane] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT40810] ADD CONSTRAINT [CK__EXT40810__CREATD__215A3D27] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT40810] ADD CONSTRAINT [CK__EXT40810__MODIFD__224E6160] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT40810] ADD CONSTRAINT [PKEXT40810] PRIMARY KEY NONCLUSTERED  ([Extender_Page_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT40810] ON [dbo].[EXT40810] ([Extender_Page_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT40810] ON [dbo].[EXT40810] ([Navigation_Pane], [Extender_Page_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40810].[Extender_Page_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40810].[Extender_Page_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT40810].[Navigation_Pane]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT40810].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40810].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT40810].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT40810].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT40810].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[EXT40810] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT40810] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT40810] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT40810] TO [DYNGRP]
GO
