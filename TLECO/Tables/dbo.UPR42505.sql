CREATE TABLE [dbo].[UPR42505]
(
[Batch_Prefix] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42505] ADD CONSTRAINT [PKUPR42505] PRIMARY KEY NONCLUSTERED  ([Batch_Prefix], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42505] ON [dbo].[UPR42505] ([EMPLOYID], [Batch_Prefix]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42505].[Batch_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42505].[EMPLOYID]'
GO
GRANT SELECT ON  [dbo].[UPR42505] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42505] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42505] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42505] TO [DYNGRP]
GO
