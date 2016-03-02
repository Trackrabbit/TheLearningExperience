CREATE TABLE [dbo].[SVC00952]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Good_Stock] [tinyint] NOT NULL,
[TRNSFLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITLOCN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETADAYS] [smallint] NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Used_Options] [smallint] NOT NULL,
[SVC_ItemSiteDelta] [tinyint] NOT NULL,
[SVC_Create_Non_Serial_Eq] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00952] ADD CONSTRAINT [PKSVC00952] PRIMARY KEY CLUSTERED  ([ITEMNMBR], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00952].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00952].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00952].[Good_Stock]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00952].[TRNSFLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00952].[ITLOCN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00952].[ETADAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00952].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00952].[Used_Options]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00952].[SVC_ItemSiteDelta]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00952].[SVC_Create_Non_Serial_Eq]'
GO
GRANT SELECT ON  [dbo].[SVC00952] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00952] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00952] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00952] TO [DYNGRP]
GO
