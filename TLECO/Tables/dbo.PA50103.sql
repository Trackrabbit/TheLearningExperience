CREATE TABLE [dbo].[PA50103]
(
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PA50103] ADD CONSTRAINT [CK__PA50103__DOCDATE__7093AB15] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PA50103] ADD CONSTRAINT [PKPA50103] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PA50103] ON [dbo].[PA50103] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50103].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50103].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50103].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50103].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA50103].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50103].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PA50103].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PA50103].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50103].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA50103].[CURNCYID]'
GO
GRANT SELECT ON  [dbo].[PA50103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PA50103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PA50103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PA50103] TO [DYNGRP]
GO
