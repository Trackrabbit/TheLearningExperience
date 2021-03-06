CREATE TABLE [dbo].[OSHABP]
(
[INJURYBODYPART_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OSHABP] ADD CONSTRAINT [PKOSHABP] PRIMARY KEY CLUSTERED  ([INJURYBODYPART_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OSHABP].[INJURYBODYPART_I]'
GO
GRANT SELECT ON  [dbo].[OSHABP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[OSHABP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[OSHABP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[OSHABP] TO [DYNGRP]
GO
