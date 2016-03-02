CREATE TABLE [dbo].[AAG00301]
(
[aaDistrQueryID] [int] NOT NULL,
[aaColumn] [smallint] NOT NULL,
[aaOrder] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00301] ADD CONSTRAINT [PKAAG00301] PRIMARY KEY CLUSTERED  ([aaDistrQueryID], [aaColumn]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00301] ON [dbo].[AAG00301] ([aaDistrQueryID], [aaOrder]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00301].[aaDistrQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00301].[aaColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00301].[aaOrder]'
GO
GRANT SELECT ON  [dbo].[AAG00301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00301] TO [DYNGRP]
GO
