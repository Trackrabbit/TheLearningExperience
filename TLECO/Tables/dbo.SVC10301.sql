CREATE TABLE [dbo].[SVC10301]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LineNumber] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQUIPID] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Meters_1] [int] NOT NULL,
[Meters_2] [int] NOT NULL,
[Meters_3] [int] NOT NULL,
[Meters_4] [int] NOT NULL,
[Meters_5] [int] NOT NULL,
[Dailys_1] [numeric] (19, 5) NOT NULL,
[Dailys_2] [numeric] (19, 5) NOT NULL,
[Dailys_3] [numeric] (19, 5) NOT NULL,
[Dailys_4] [numeric] (19, 5) NOT NULL,
[Dailys_5] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC10301] ADD CONSTRAINT [PKSVC10301] PRIMARY KEY NONCLUSTERED  ([BACHNUMB], [LineNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC10301] ON [dbo].[SVC10301] ([BACHNUMB], [CUSTNMBR], [ADRSCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10301].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[LineNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10301].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10301].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC10301].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[Meters_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[Meters_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[Meters_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[Meters_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC10301].[Meters_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC10301].[Dailys_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC10301].[Dailys_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC10301].[Dailys_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC10301].[Dailys_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC10301].[Dailys_5]'
GO
GRANT SELECT ON  [dbo].[SVC10301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC10301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC10301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC10301] TO [DYNGRP]
GO
