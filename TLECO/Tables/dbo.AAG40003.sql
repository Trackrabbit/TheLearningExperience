CREATE TABLE [dbo].[AAG40003]
(
[aaGLHdrID] [int] NOT NULL,
[aaGLDistID] [int] NOT NULL,
[aaGLAssignID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxCodeID] [int] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG40003__DEX_RO__75E27017] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG40003U] ON [dbo].[AAG40003] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG40003 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG40003, inserted WHERE AAG40003.aaGLHdrID = inserted.aaGLHdrID AND AAG40003.aaGLDistID = inserted.aaGLDistID AND AAG40003.aaGLAssignID = inserted.aaGLAssignID AND AAG40003.aaTrxDimID = inserted.aaTrxDimID END set nocount off    
GO
ALTER TABLE [dbo].[AAG40003] ADD CONSTRAINT [PKAAG40003] PRIMARY KEY CLUSTERED  ([aaGLHdrID], [aaGLDistID], [aaGLAssignID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40003].[aaGLHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40003].[aaGLDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40003].[aaGLAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40003].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG40003].[aaTrxCodeID]'
GO
GRANT SELECT ON  [dbo].[AAG40003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG40003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG40003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG40003] TO [DYNGRP]
GO
