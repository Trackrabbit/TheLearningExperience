CREATE TABLE [dbo].[STN41200]
(
[PRNSER] [smallint] NOT NULL,
[PRNTASK] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTTASKDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STN41200] ADD CONSTRAINT [PKSTN41200] PRIMARY KEY CLUSTERED  ([PRNSER], [PRNTASK]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2STN41200] ON [dbo].[STN41200] ([PRNSER], [PRNTTASKDESC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41200].[PRNSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41200].[PRNTASK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41200].[PRNTTASKDESC]'
GO
GRANT SELECT ON  [dbo].[STN41200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[STN41200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[STN41200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[STN41200] TO [DYNGRP]
GO
