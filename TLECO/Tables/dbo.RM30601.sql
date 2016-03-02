CREATE TABLE [dbo].[RM30601]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[STAXAMNT] [numeric] (19, 5) NOT NULL,
[ORSLSTAX] [numeric] (19, 5) NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[ORFRTTAX] [numeric] (19, 5) NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[ORMSCTAX] [numeric] (19, 5) NOT NULL,
[TAXDTSLS] [numeric] (19, 5) NOT NULL,
[ORTOTSLS] [numeric] (19, 5) NOT NULL,
[TDTTXSLS] [numeric] (19, 5) NOT NULL,
[ORTXSLS] [numeric] (19, 5) NOT NULL,
[POSTED] [tinyint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM30601] ADD CONSTRAINT [PKRM30601] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR], [TRXSORCE], [TAXDTLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM30601] ON [dbo].[RM30601] ([RMDTYPAL], [DOCNUMBR], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30601].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30601].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30601].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30601].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30601].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30601].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30601].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[STAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[ORSLSTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[TAXDTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[ORTOTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[TDTTXSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30601].[ORTXSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30601].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30601].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30601].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[RM30601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM30601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM30601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM30601] TO [DYNGRP]
GO
