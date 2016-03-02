CREATE TABLE [dbo].[AAG10002]
(
[aaGLWorkHdrID] [int] NOT NULL,
[aaGLWorkDistID] [int] NOT NULL,
[aaGLWorkAssignID] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[aaAssignedPercent] [int] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[aaAssignErrors] [binary] (4) NOT NULL,
[aaAliasID] [int] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG10002__DEX_RO__3118447E] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG10002U] ON [dbo].[AAG10002] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG10002 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG10002, inserted WHERE AAG10002.aaGLWorkHdrID = inserted.aaGLWorkHdrID AND AAG10002.aaGLWorkDistID = inserted.aaGLWorkDistID AND AAG10002.aaGLWorkAssignID = inserted.aaGLWorkAssignID END set nocount off    
GO
ALTER TABLE [dbo].[AAG10002] ADD CONSTRAINT [PKAAG10002] PRIMARY KEY CLUSTERED  ([aaGLWorkHdrID], [aaGLWorkDistID], [aaGLWorkAssignID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10002].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10002].[aaGLWorkDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10002].[aaGLWorkAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10002].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10002].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10002].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10002].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10002].[aaAssignedPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10002].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG10002].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10002].[aaAssignErrors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10002].[aaAliasID]'
GO
GRANT SELECT ON  [dbo].[AAG10002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG10002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG10002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG10002] TO [DYNGRP]
GO
