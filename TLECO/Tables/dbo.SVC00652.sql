CREATE TABLE [dbo].[SVC00652]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[OPTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[ORUNTPRC] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00652] ADD CONSTRAINT [CK__SVC00652__ENDDAT__593C0FC8] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00652] ADD CONSTRAINT [CK__SVC00652__STRTDA__5A303401] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00652] ADD CONSTRAINT [PKSVC00652] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR], [OPTTYPE]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1SVC00652] ON [dbo].[SVC00652] ([CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SVC00652] ON [dbo].[SVC00652] ([CONSTS], [CONTNBR], [LNSEQNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00652].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00652].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00652].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00652].[OPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00652].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00652].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00652].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00652].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00652].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00652].[ORUNTPRC]'
GO
GRANT SELECT ON  [dbo].[SVC00652] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00652] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00652] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00652] TO [DYNGRP]
GO
