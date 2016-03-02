CREATE TABLE [dbo].[B0510270]
(
[MJW_Key] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Keys_Lock] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510270] ADD CONSTRAINT [PKB0510270] PRIMARY KEY CLUSTERED  ([MJW_Key]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510270] ON [dbo].[B0510270] ([MJW_Keys_Lock], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510270].[MJW_Key]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510270].[MJW_Keys_Lock]'
GO
GRANT SELECT ON  [dbo].[B0510270] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510270] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510270] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510270] TO [DYNGRP]
GO
