CREATE TABLE [dbo].[MC40200]
(
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CRNCYDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRNCYSYM] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNYSYMAR_1] [smallint] NOT NULL,
[CNYSYMAR_2] [smallint] NOT NULL,
[CNYSYMAR_3] [smallint] NOT NULL,
[CYSYMPLC] [smallint] NOT NULL,
[INCLSPAC] [tinyint] NOT NULL,
[NEGSYMBL] [smallint] NOT NULL,
[NGSMAMPC] [smallint] NOT NULL,
[NEGSMPLC] [smallint] NOT NULL,
[DECSYMBL] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[THOUSSYM] [smallint] NOT NULL,
[CURTEXT_1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURTEXT_2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURTEXT_3] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISOCURRC] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURLNGID] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__MC40200__DEX_ROW__5006DFF2] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_MC40200U] ON [dbo].[MC40200] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.MC40200 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.MC40200, inserted WHERE MC40200.CURNCYID = inserted.CURNCYID END set nocount off    
GO
ALTER TABLE [dbo].[MC40200] ADD CONSTRAINT [PKMC40200] PRIMARY KEY NONCLUSTERED  ([CURNCYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC40200] ON [dbo].[MC40200] ([CRNCYDSC], [CURNCYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC40200] ON [dbo].[MC40200] ([CURRNIDX]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC40200] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC40200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[CRNCYDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[CRNCYSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[CNYSYMAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[CNYSYMAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[CNYSYMAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[CYSYMPLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[INCLSPAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[NEGSYMBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[NGSMAMPC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[NEGSMPLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[DECSYMBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[THOUSSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[CURTEXT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[CURTEXT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[CURTEXT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40200].[ISOCURRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40200].[CURLNGID]'
GO
GRANT SELECT ON  [dbo].[MC40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC40200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC40200] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[MC40200] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[MC40200] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[MC40200] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[MC40200] TO [rpt_all user]
GO
