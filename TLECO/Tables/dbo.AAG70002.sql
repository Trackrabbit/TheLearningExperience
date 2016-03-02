CREATE TABLE [dbo].[AAG70002]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaGLHdrID] [int] NOT NULL,
[aaGLDistID] [int] NOT NULL,
[aaGLAssignID] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[SERIES] [smallint] NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG70002] ADD CONSTRAINT [PKAAG70002] PRIMARY KEY NONCLUSTERED  ([aaGLHdrID], [aaGLDistID], [aaGLAssignID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG70002] ON [dbo].[AAG70002] ([USERID], [TRXBTCHSRC], [aaGLHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70002].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70002].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70002].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70002].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70002].[aaGLAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG70002].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG70002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG70002].[DistRef]'
GO
GRANT SELECT ON  [dbo].[AAG70002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG70002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG70002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG70002] TO [DYNGRP]
GO
