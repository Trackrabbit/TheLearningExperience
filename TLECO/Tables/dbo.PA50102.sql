CREATE TABLE [dbo].[PA50102]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRDCTY] [smallint] NOT NULL,
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPTOAMT] [numeric] (19, 5) NOT NULL,
[ORAPTOAM] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[FROMCURR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paRefundApply] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PA50102] ADD CONSTRAINT [PKPA50102] PRIMARY KEY NONCLUSTERED  ([USERID], [CUSTNMBR], [APFRDCTY], [APFRDCNM], [APTODCTY], [APTODCNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PA50102] ON [dbo].[PA50102] ([USERID], [CPRCSTNM], [APFRDCTY], [APFRDCNM], [APTODCTY], [APTODCNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50102].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50102].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50102].[CPRCSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50102].[APFRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50102].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50102].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50102].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50102].[APPTOAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50102].[ORAPTOAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50102].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50102].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50102].[FROMCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50102].[paRefundApply]'
GO
GRANT SELECT ON  [dbo].[PA50102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PA50102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PA50102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PA50102] TO [DYNGRP]
GO
