CREATE TABLE [dbo].[SY05501]
(
[CMPANYID] [smallint] NOT NULL,
[EXPRINST] [tinyint] NOT NULL,
[PRICEOPT] [smallint] NOT NULL,
[PALOPT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY05501] ADD CONSTRAINT [PKSY05501] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05501].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05501].[EXPRINST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05501].[PRICEOPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY05501].[PALOPT]'
GO
GRANT SELECT ON  [dbo].[SY05501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY05501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY05501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY05501] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY05501] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY05501] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY05501] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY05501] TO [RAPIDGRP]
GO
