CREATE TABLE [dbo].[MS273537]
(
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[NDS_NodePath] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_NodeName] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_NodeValue] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Encrypted] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273537] ADD CONSTRAINT [PKMS273537] PRIMARY KEY NONCLUSTERED  ([MSO_EngineGUID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MS273537] ON [dbo].[MS273537] ([MSO_EngineGUID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MS273537] ON [dbo].[MS273537] ([MSO_EngineGUID], [NDS_NodePath], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273537].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273537].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273537].[NDS_NodePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273537].[NDS_NodeName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273537].[NDS_NodeValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273537].[NDS_Encrypted]'
GO
GRANT SELECT ON  [dbo].[MS273537] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273537] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273537] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273537] TO [DYNGRP]
GO
