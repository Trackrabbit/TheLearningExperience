CREATE TABLE [dbo].[DD40700]
(
[INDXLONG] [int] NOT NULL,
[MUPR_ddPayrunIndex] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD40700] ADD CONSTRAINT [PKDD40700] PRIMARY KEY NONCLUSTERED  ([INDXLONG]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40700].[INDXLONG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40700].[MUPR_ddPayrunIndex]'
GO
GRANT SELECT ON  [dbo].[DD40700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD40700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD40700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD40700] TO [DYNGRP]
GO
