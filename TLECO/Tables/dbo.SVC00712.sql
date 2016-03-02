CREATE TABLE [dbo].[SVC00712]
(
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSFLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[POSTED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00712] ADD CONSTRAINT [PKSVC00712] PRIMARY KEY NONCLUSTERED  ([ORDDOCID], [LNITMSEQ], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00712] ON [dbo].[SVC00712] ([ORDDOCID], [LNITMSEQ], [POSTED], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00712].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00712].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00712].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00712].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00712].[TRNSFLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00712].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00712].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00712].[TOBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00712].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00712].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00712].[POSTED]'
GO
GRANT SELECT ON  [dbo].[SVC00712] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00712] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00712] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00712] TO [DYNGRP]
GO
