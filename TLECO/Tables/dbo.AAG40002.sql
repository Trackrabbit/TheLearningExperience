CREATE TABLE [dbo].[AAG40002]
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
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG40002__DEX_RO__6C5905DD] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG40002U] ON [dbo].[AAG40002] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG40002 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG40002, inserted WHERE AAG40002.aaGLHdrID = inserted.aaGLHdrID AND AAG40002.aaGLDistID = inserted.aaGLDistID AND AAG40002.aaGLAssignID = inserted.aaGLAssignID END set nocount off    
GO
ALTER TABLE [dbo].[AAG40002] ADD CONSTRAINT [PKAAG40002] PRIMARY KEY CLUSTERED  ([aaGLHdrID], [aaGLDistID], [aaGLAssignID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40002].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40002].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40002].[aaGLAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG40002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG40002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG40002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG40002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40002].[aaAssignedPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG40002].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG40002].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG40002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG40002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG40002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG40002] TO [DYNGRP]
GO
