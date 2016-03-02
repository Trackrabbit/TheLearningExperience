CREATE TABLE [dbo].[AAG30003]
(
[aaGLHdrID] [int] NOT NULL,
[aaGLDistID] [int] NOT NULL,
[aaGLAssignID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxCodeID] [int] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG30003__DEX_RO__4DE98D56] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG30003U] ON [dbo].[AAG30003] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG30003 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG30003, inserted WHERE AAG30003.aaGLHdrID = inserted.aaGLHdrID AND AAG30003.aaGLDistID = inserted.aaGLDistID AND AAG30003.aaGLAssignID = inserted.aaGLAssignID AND AAG30003.aaTrxDimID = inserted.aaTrxDimID END set nocount off    
GO
ALTER TABLE [dbo].[AAG30003] ADD CONSTRAINT [PKAAG30003] PRIMARY KEY CLUSTERED  ([aaGLHdrID], [aaGLDistID], [aaGLAssignID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30003].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30003].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30003].[aaGLAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30003].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG30003].[aaTrxCodeID]'
GO
GRANT SELECT ON  [dbo].[AAG30003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG30003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG30003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG30003] TO [DYNGRP]
GO
