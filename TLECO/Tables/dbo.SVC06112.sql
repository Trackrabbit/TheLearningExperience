CREATE TABLE [dbo].[SVC06112]
(
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[POSTED] [tinyint] NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06112] ADD CONSTRAINT [PKSVC06112] PRIMARY KEY NONCLUSTERED  ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [CMPNTSEQ], [LNITMSEQ], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06112] ON [dbo].[SVC06112] ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [CMPNTSEQ], [LNITMSEQ], [POSTED], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06112].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06112].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06112].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06112].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06112].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06112].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06112].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC06112] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06112] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06112] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06112] TO [DYNGRP]
GO
