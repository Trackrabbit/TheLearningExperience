CREATE TABLE [dbo].[PM80950]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCHKNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[CHKCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEPRMTNC] [tinyint] NOT NULL,
[ERROR] [smallint] NOT NULL,
[Email_Type] [smallint] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[PYMTTYPE] [smallint] NOT NULL,
[Electronic] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM80950] ADD CONSTRAINT [CK__PM80950__DOCDATE__070CFC19] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM80950] ADD CONSTRAINT [PKPM80950] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB], [SEQNUMBR], [PMNTNMBR], [Email_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM80950] ON [dbo].[PM80950] ([BCHSOURC], [BACHNUMB], [DOCNUMBR], [PMNTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM80950] ON [dbo].[PM80950] ([USERID], [SEQNUMBR], [BCHSOURC], [PMNTNMBR], [Email_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80950].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[CHKCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80950].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[SEPRMTNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[ERROR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[Email_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80950].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[PYMTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80950].[Electronic]'
GO
GRANT SELECT ON  [dbo].[PM80950] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM80950] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM80950] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM80950] TO [DYNGRP]
GO
