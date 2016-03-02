CREATE TABLE [dbo].[AAG00402]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeNumID] [int] NOT NULL,
[aaTrxDimCodeNum] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00402] ADD CONSTRAINT [PKAAG00402] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeNumID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00402] ON [dbo].[AAG00402] ([aaTrxDimID], [aaTrxDimCodeNum]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00402].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00402].[aaTrxDimCodeNumID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00402].[aaTrxDimCodeNum]'
GO
GRANT SELECT ON  [dbo].[AAG00402] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00402] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00402] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00402] TO [DYNGRP]
GO
