CREATE TABLE [dbo].[AAG60001]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[aaGLWorkHdrID] [int] NOT NULL,
[aaGLWorkDistID] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG60001] ADD CONSTRAINT [PKAAG60001] PRIMARY KEY NONCLUSTERED  ([aaGLWorkHdrID], [aaGLWorkDistID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG60001] ON [dbo].[AAG60001] ([USERID], [TRXBTCHSRC], [aaGLWorkHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60001].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60001].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60001].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60001].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60001].[aaGLWorkDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60001].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60001].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[AAG60001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG60001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG60001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG60001] TO [DYNGRP]
GO
