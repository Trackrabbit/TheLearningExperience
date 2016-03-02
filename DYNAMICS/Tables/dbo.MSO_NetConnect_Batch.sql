CREATE TABLE [dbo].[MSO_NetConnect_Batch]
(
[RowID] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSO_NetConnect_Batch] ADD CONSTRAINT [PKMSO_NetConnect_Batch] PRIMARY KEY NONCLUSTERED  ([RowID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_NetConnect_Batch].[RowID]'
GO
GRANT SELECT ON  [dbo].[MSO_NetConnect_Batch] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MSO_NetConnect_Batch] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MSO_NetConnect_Batch] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MSO_NetConnect_Batch] TO [DYNGRP]
GO
