CREATE TABLE [dbo].[POP30340]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP30340] ADD CONSTRAINT [PKPOP30340] PRIMARY KEY NONCLUSTERED  ([POPRCTNM], [RCPTLNNM], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30340].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30340].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30340].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30340].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30340].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30340].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30340].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30340].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30340].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[POP30340] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP30340] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP30340] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP30340] TO [DYNGRP]
GO
