CREATE TABLE [dbo].[AAG00801]
(
[aaAliasID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00801] ADD CONSTRAINT [PKAAG00801] PRIMARY KEY CLUSTERED  ([aaAliasID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00801].[aaAliasID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00801].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00801].[aaTrxDimCodeID]'
GO
GRANT SELECT ON  [dbo].[AAG00801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00801] TO [DYNGRP]
GO
