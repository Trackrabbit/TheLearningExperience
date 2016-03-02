CREATE TABLE [dbo].[SVC30610]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[EQUIPID] [int] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[SCHEDID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30610] ADD CONSTRAINT [PKSVC30610] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR], [EQUIPID], [SCHEDID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30610] ON [dbo].[SVC30610] ([ACTIVE], [EQUIPID], [SCHEDID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30610].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30610].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30610].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30610].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30610].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30610].[SCHEDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30610].[SVC_Contract_Version]'
GO
GRANT SELECT ON  [dbo].[SVC30610] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30610] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30610] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30610] TO [DYNGRP]
GO
