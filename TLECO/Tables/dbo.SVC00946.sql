CREATE TABLE [dbo].[SVC00946]
(
[SVC_Tech_Inventory_ID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00946] ADD CONSTRAINT [PKSVC00946] PRIMARY KEY NONCLUSTERED  ([SVC_Tech_Inventory_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00946] ON [dbo].[SVC00946] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00946].[SVC_Tech_Inventory_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00946].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00946].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[SVC00946] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00946] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00946] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00946] TO [DYNGRP]
GO
