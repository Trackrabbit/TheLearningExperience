CREATE TABLE [dbo].[AAG60002]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaGLWorkHdrID] [int] NOT NULL,
[aaGLWorkDistID] [int] NOT NULL,
[aaGLWorkAssignID] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[SERIES] [smallint] NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG60002] ADD CONSTRAINT [PKAAG60002] PRIMARY KEY NONCLUSTERED  ([aaGLWorkHdrID], [aaGLWorkDistID], [aaGLWorkAssignID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG60002] ON [dbo].[AAG60002] ([USERID], [TRXBTCHSRC], [aaGLWorkHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60002].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60002].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60002].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60002].[aaGLWorkDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60002].[aaGLWorkAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG60002].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG60002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG60002].[DistRef]'
GO
GRANT SELECT ON  [dbo].[AAG60002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG60002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG60002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG60002] TO [DYNGRP]
GO
