CREATE TABLE [dbo].[AAG30002]
(
[aaGLHdrID] [int] NOT NULL,
[aaGLDistID] [int] NOT NULL,
[aaGLAssignID] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[aaAssignedPercent] [int] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[aaAliasID] [int] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG30002__DEX_RO__37FA4C37] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG30002U] ON [dbo].[AAG30002] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG30002 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG30002, inserted WHERE AAG30002.aaGLHdrID = inserted.aaGLHdrID AND AAG30002.aaGLDistID = inserted.aaGLDistID AND AAG30002.aaGLAssignID = inserted.aaGLAssignID END set nocount off    
GO
ALTER TABLE [dbo].[AAG30002] ADD CONSTRAINT [PKAAG30002] PRIMARY KEY CLUSTERED  ([aaGLHdrID], [aaGLDistID], [aaGLAssignID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30002].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30002].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30002].[aaGLAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30002].[aaAssignedPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG30002].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG30002].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30002].[aaAliasID]'
GO
GRANT SELECT ON  [dbo].[AAG30002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG30002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG30002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG30002] TO [DYNGRP]
GO
