CREATE TABLE [dbo].[MS273539]
(
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273539] ADD CONSTRAINT [PKMS273539] PRIMARY KEY CLUSTERED  ([MSO_EngineGUID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273539].[MSO_EngineGUID]'
GO
GRANT SELECT ON  [dbo].[MS273539] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273539] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273539] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273539] TO [DYNGRP]
GO
