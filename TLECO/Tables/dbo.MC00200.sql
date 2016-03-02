CREATE TABLE [dbo].[MC00200]
(
[ACTINDX] [int] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REVALUE] [tinyint] NOT NULL,
[REVLUHOW] [smallint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[CurrencyTranslationType] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__MC00200__DEX_ROW__438BFA74] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_MC00200U] ON [dbo].[MC00200] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.MC00200 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.MC00200, inserted WHERE MC00200.ACTINDX = inserted.ACTINDX AND MC00200.CURNCYID = inserted.CURNCYID END set nocount off    
GO
ALTER TABLE [dbo].[MC00200] ADD CONSTRAINT [PKMC00200] PRIMARY KEY NONCLUSTERED  ([ACTINDX], [CURNCYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC00200] ON [dbo].[MC00200] ([CURNCYID], [ACTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC00200] ON [dbo].[MC00200] ([REVALUE], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC00200] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00200].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00200].[REVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00200].[REVLUHOW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00200].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00200].[CurrencyTranslationType]'
GO
GRANT SELECT ON  [dbo].[MC00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC00200] TO [DYNGRP]
GO