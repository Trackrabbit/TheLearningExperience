CREATE TABLE [dbo].[AAG04001]
(
[aaFASetupID] [int] NOT NULL,
[ListID] [smallint] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG04001] ADD CONSTRAINT [PKAAG04001] PRIMARY KEY NONCLUSTERED  ([aaFASetupID], [ListID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04001].[aaFASetupID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04001].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04001].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04001].[aaTrxDimCodeID]'
GO
GRANT SELECT ON  [dbo].[AAG04001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG04001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG04001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG04001] TO [DYNGRP]
GO
