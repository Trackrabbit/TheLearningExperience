CREATE TABLE [dbo].[DW010013]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATUSLINE_I] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[DWGSIZE_I] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DRAWINGTYPE_I] [smallint] NOT NULL,
[SUPERVISOR2_I] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[MFGNOTEINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DW010013] ADD CONSTRAINT [CK__DW010013__CHANGE__18385372] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[DW010013] ADD CONSTRAINT [CK__DW010013__CHANGE__17442F39] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[DW010013] ADD CONSTRAINT [CK__DW010013__CREATD__192C77AB] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[DW010013] ADD CONSTRAINT [PKDW010013] PRIMARY KEY CLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DW010013].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DW010013].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DW010013].[STATUSLINE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DW010013].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DW010013].[DWGSIZE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DW010013].[DRAWINGTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DW010013].[SUPERVISOR2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DW010013].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DW010013].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DW010013].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DW010013].[MFGNOTEINDEX_I]'
GO
GRANT SELECT ON  [dbo].[DW010013] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DW010013] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DW010013] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DW010013] TO [DYNGRP]
GO
