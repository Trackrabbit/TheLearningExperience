CREATE TABLE [dbo].[UPR41901]
(
[EARNINGSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41901] ADD CONSTRAINT [PKUPR41901] PRIMARY KEY NONCLUSTERED  ([EARNINGSCODE], [PAYRCORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41901] ON [dbo].[UPR41901] ([PAYRCORD], [EARNINGSCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41901].[EARNINGSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41901].[PAYRCORD]'
GO
GRANT SELECT ON  [dbo].[UPR41901] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41901] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41901] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41901] TO [DYNGRP]
GO
