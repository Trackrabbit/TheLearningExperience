CREATE TABLE [dbo].[SLB10000]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Item_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Number] [smallint] NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[Summary_SmartList_CB] [tinyint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10000] ADD CONSTRAINT [CK__SLB10000__CREATD__3B95D2F1] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SLB10000] ADD CONSTRAINT [CK__SLB10000__MODIFD__3C89F72A] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SLB10000] ADD CONSTRAINT [PKSLB10000] PRIMARY KEY NONCLUSTERED  ([SmartList_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SLB10000] ON [dbo].[SLB10000] ([PRODID], [Series_Number], [SmartList_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SLB10000] ON [dbo].[SLB10000] ([SmartList_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SLB10000] ON [dbo].[SLB10000] ([SmartList_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10000].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10000].[SmartList_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10000].[SmartList_Item_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10000].[SmartList_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10000].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10000].[Summary_SmartList_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10000].[Series_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SLB10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10000].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SLB10000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10000].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[SLB10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10000] TO [DYNGRP]
GO
