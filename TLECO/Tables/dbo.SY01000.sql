CREATE TABLE [dbo].[SY01000]
(
[REPRNTNT] [tinyint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TRXSOURC] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSRCPX] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NTRXSNUM] [int] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01000] ADD CONSTRAINT [PKSY01000] PRIMARY KEY NONCLUSTERED  ([SERIES], [TRXSRCPX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY01000] ON [dbo].[SY01000] ([SERIES], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01000] ON [dbo].[SY01000] ([SOURCDOC], [TRXSOURC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01000].[REPRNTNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01000].[TRXSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01000].[TRXSRCPX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01000].[NTRXSNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01000].[SOURCDOC]'
GO
GRANT SELECT ON  [dbo].[SY01000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01000] TO [DYNGRP]
GO
