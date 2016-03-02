CREATE TABLE [dbo].[AAG10003]
(
[aaGLWorkHdrID] [int] NOT NULL,
[aaGLWorkDistID] [int] NOT NULL,
[aaGLWorkAssignID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxCodeID] [int] NOT NULL,
[aaCodeErrors] [binary] (4) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG10003__DEX_RO__4707859D] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG10003U] ON [dbo].[AAG10003] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG10003 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG10003, inserted WHERE AAG10003.aaGLWorkHdrID = inserted.aaGLWorkHdrID AND AAG10003.aaGLWorkDistID = inserted.aaGLWorkDistID AND AAG10003.aaGLWorkAssignID = inserted.aaGLWorkAssignID AND AAG10003.aaTrxDimID = inserted.aaTrxDimID END set nocount off    
GO
ALTER TABLE [dbo].[AAG10003] ADD CONSTRAINT [PKAAG10003] PRIMARY KEY CLUSTERED  ([aaGLWorkHdrID], [aaGLWorkDistID], [aaGLWorkAssignID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10003].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10003].[aaGLWorkDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10003].[aaGLWorkAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10003].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10003].[aaTrxCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10003].[aaCodeErrors]'
GO
GRANT SELECT ON  [dbo].[AAG10003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG10003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG10003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG10003] TO [DYNGRP]
GO
