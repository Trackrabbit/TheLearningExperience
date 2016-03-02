CREATE TABLE [dbo].[MC00300]
(
[ACTINDX] [int] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[HSTRCLRT] [numeric] (19, 7) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC00300] ADD CONSTRAINT [PKMC00300] PRIMARY KEY NONCLUSTERED  ([ACTINDX], [CURNCYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC00300] ON [dbo].[MC00300] ([CURNCYID], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00300].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00300].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00300].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC00300].[HSTRCLRT]'
GO
GRANT SELECT ON  [dbo].[MC00300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC00300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC00300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC00300] TO [DYNGRP]
GO