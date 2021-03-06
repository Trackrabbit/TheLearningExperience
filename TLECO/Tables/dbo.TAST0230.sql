CREATE TABLE [dbo].[TAST0230]
(
[ATTRSN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAST0230] ADD CONSTRAINT [PKTAST0230] PRIMARY KEY CLUSTERED  ([ATTRSN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAST0230].[ATTRSN]'
GO
GRANT SELECT ON  [dbo].[TAST0230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TAST0230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TAST0230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TAST0230] TO [DYNGRP]
GO
