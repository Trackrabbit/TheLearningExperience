CREATE TABLE [dbo].[PM80800]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[CAMPYNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHAMCBID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM80800] ADD CONSTRAINT [CK__PM80800__CHEKDAT__7F6BDA51] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[PM80800] ADD CONSTRAINT [PKPM80800] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM80800] ON [dbo].[PM80800] ([TRXSORCE], [VCHRNMBR], [DOCTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80800].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80800].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80800].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80800].[CAMPYNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80800].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80800].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80800].[CHAMCBID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80800].[CHEKAMNT]'
GO
GRANT SELECT ON  [dbo].[PM80800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM80800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM80800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM80800] TO [DYNGRP]
GO
