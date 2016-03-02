CREATE TABLE [dbo].[B0510101]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510101] ADD CONSTRAINT [PKB0510101] PRIMARY KEY NONCLUSTERED  ([VENDORID], [SLPRSNID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510101] ON [dbo].[B0510101] ([SLPRSNID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510101].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510101].[SLPRSNID]'
GO
GRANT SELECT ON  [dbo].[B0510101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510101] TO [DYNGRP]
GO