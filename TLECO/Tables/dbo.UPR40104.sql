CREATE TABLE [dbo].[UPR40104]
(
[SETUPKEY] [smallint] NOT NULL,
[MUPR_RetryInterval] [smallint] NOT NULL,
[MUPR_MaxWaitTime] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40104] ADD CONSTRAINT [PKUPR40104] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40104].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40104].[MUPR_RetryInterval]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40104].[MUPR_MaxWaitTime]'
GO
GRANT SELECT ON  [dbo].[UPR40104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40104] TO [DYNGRP]
GO