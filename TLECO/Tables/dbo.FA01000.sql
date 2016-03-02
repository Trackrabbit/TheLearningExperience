CREATE TABLE [dbo].[FA01000]
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
ALTER TABLE [dbo].[FA01000] ADD CONSTRAINT [PKFA01000] PRIMARY KEY CLUSTERED  ([SERIES], [TRXSRCPX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01000].[REPRNTNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01000].[TRXSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01000].[TRXSRCPX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01000].[NTRXSNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01000].[SOURCDOC]'
GO
GRANT SELECT ON  [dbo].[FA01000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA01000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA01000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA01000] TO [DYNGRP]
GO
