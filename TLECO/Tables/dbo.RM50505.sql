CREATE TABLE [dbo].[RM50505]
(
[POSTEDDT] [datetime] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRVAL] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRX_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTAMNT] [numeric] (19, 5) NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM50505] ADD CONSTRAINT [CK__RM50505__POSTEDD__28C2F59F] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[RM50505] ADD CONSTRAINT [PKRM50505] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM50505] ON [dbo].[RM50505] ([TRX_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1RM50505] ON [dbo].[RM50505] ([TRXSORCE], [POSTEDDT], [CUSTNMBR], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1RM50505] ON [dbo].[RM50505] ([TRXSORCE], [POSTEDDT], [CUSTNMBR], [RMDTYPAL], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50505].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50505].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50505].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50505].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50505].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50505].[STRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50505].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50505].[ACCTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50505].[RMDTYPAL]'
GO
GRANT SELECT ON  [dbo].[RM50505] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM50505] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM50505] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM50505] TO [DYNGRP]
GO
