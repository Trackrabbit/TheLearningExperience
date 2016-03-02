CREATE TABLE [dbo].[UPR10307]
(
[MLCHKTYP] [smallint] NOT NULL,
[PYADNMBR] [int] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATACRVAC] [tinyint] NOT NULL,
[ATACRSCK] [tinyint] NOT NULL,
[GROSAMNT] [numeric] (19, 5) NOT NULL,
[NETAMNT] [numeric] (19, 5) NOT NULL,
[MCHKPRTD] [tinyint] NOT NULL,
[MCHKPSTD] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10307] ADD CONSTRAINT [CK__UPR10307__CHEKDA__4F089A18] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR10307] ADD CONSTRAINT [CK__UPR10307__POSTED__4FFCBE51] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR10307] ADD CONSTRAINT [PKUPR10307] PRIMARY KEY NONCLUSTERED  ([MLCHKTYP], [PYADNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10307] ON [dbo].[UPR10307] ([BACHNUMB], [MLCHKTYP], [PYADNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10307].[MLCHKTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10307].[PYADNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10307].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10307].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10307].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10307].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR10307].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10307].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10307].[ATACRVAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10307].[ATACRSCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10307].[GROSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10307].[NETAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10307].[MCHKPRTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10307].[MCHKPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10307].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR10307] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10307] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10307] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10307] TO [DYNGRP]
GO
