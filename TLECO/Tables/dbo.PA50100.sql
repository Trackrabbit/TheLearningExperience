CREATE TABLE [dbo].[PA50100]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Balance] [numeric] (19, 5) NOT NULL,
[OriginatingBalance] [numeric] (19, 5) NOT NULL,
[NUMOFINV] [int] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERROR] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PA50100] ADD CONSTRAINT [PKPA50100] PRIMARY KEY NONCLUSTERED  ([USERID], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PA50100] ON [dbo].[PA50100] ([USERID], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[CPRCSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50100].[Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50100].[OriginatingBalance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50100].[NUMOFINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50100].[ERROR]'
GO
GRANT SELECT ON  [dbo].[PA50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PA50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PA50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PA50100] TO [DYNGRP]
GO
