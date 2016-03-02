CREATE TABLE [dbo].[AAG70001]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[aaGLHdrID] [int] NOT NULL,
[aaGLDistID] [int] NOT NULL,
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
ALTER TABLE [dbo].[AAG70001] ADD CONSTRAINT [PKAAG70001] PRIMARY KEY NONCLUSTERED  ([aaGLHdrID], [aaGLDistID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG70001] ON [dbo].[AAG70001] ([USERID], [TRXBTCHSRC], [aaGLHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70001].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70001].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70001].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70001].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70001].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70001].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70001].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[AAG70001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG70001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG70001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG70001] TO [DYNGRP]
GO
