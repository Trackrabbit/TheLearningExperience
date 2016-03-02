CREATE TABLE [dbo].[GL50502]
(
[TRXDATE] [datetime] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL50502] ADD CONSTRAINT [CK__GL50502__TRXDATE__46486B8E] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL50502] ADD CONSTRAINT [PKGL50502] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1GL50502] ON [dbo].[GL50502] ([TRXDATE], [JRNENTRY], [ACTINDX], [DEBITAMT], [CRDTAMNT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1GL50502] ON [dbo].[GL50502] ([TRXDATE], [JRNENTRY], [ACTINDX], [DEBITAMT], [CRDTAMNT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL50502].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL50502].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL50502].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL50502].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL50502].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL50502].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL50502].[CRDTAMNT]'
GO
GRANT SELECT ON  [dbo].[GL50502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL50502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL50502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL50502] TO [DYNGRP]
GO