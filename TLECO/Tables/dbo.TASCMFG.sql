CREATE TABLE [dbo].[TASCMFG]
(
[TAMFGORDER] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TASCMFG] ADD CONSTRAINT [PKTASCMFG] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1TASCMFG] ON [dbo].[TASCMFG] ([TAMFGORDER], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TASCMFG].[TAMFGORDER]'
GO
GRANT SELECT ON  [dbo].[TASCMFG] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TASCMFG] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TASCMFG] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TASCMFG] TO [DYNGRP]
GO
