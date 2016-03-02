CREATE TABLE [dbo].[UPR41902]
(
[EARNINGSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41902] ADD CONSTRAINT [PKUPR41902] PRIMARY KEY NONCLUSTERED  ([EARNINGSCODE], [DEDUCTON]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41902] ON [dbo].[UPR41902] ([DEDUCTON], [EARNINGSCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41902].[EARNINGSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41902].[DEDUCTON]'
GO
GRANT SELECT ON  [dbo].[UPR41902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41902] TO [DYNGRP]
GO
