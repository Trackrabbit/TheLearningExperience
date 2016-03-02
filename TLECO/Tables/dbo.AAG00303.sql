CREATE TABLE [dbo].[AAG00303]
(
[aaDistrQueryID] [int] NOT NULL,
[aaColumn] [smallint] NOT NULL,
[aaOrder] [int] NOT NULL,
[aaSortOrder] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00303] ADD CONSTRAINT [PKAAG00303] PRIMARY KEY CLUSTERED  ([aaDistrQueryID], [aaColumn]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00303] ON [dbo].[AAG00303] ([aaDistrQueryID], [aaOrder]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00303].[aaDistrQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00303].[aaColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00303].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00303].[aaSortOrder]'
GO
GRANT SELECT ON  [dbo].[AAG00303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00303] TO [DYNGRP]
GO
