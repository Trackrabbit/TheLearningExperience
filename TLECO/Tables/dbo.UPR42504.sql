CREATE TABLE [dbo].[UPR42504]
(
[Batch_Prefix] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42504] ADD CONSTRAINT [PKUPR42504] PRIMARY KEY NONCLUSTERED  ([Batch_Prefix], [EMPLCLAS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42504] ON [dbo].[UPR42504] ([EMPLCLAS], [Batch_Prefix]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42504].[Batch_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42504].[EMPLCLAS]'
GO
GRANT SELECT ON  [dbo].[UPR42504] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42504] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42504] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42504] TO [DYNGRP]
GO
