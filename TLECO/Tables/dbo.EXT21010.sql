CREATE TABLE [dbo].[EXT21010]
(
[Extender_Solution_ID] [int] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT21010] ADD CONSTRAINT [PKEXT21010] PRIMARY KEY NONCLUSTERED  ([Extender_Solution_ID], [Extender_Type], [Extender_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT21010].[Extender_Solution_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT21010].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT21010].[Extender_ID]'
GO
GRANT SELECT ON  [dbo].[EXT21010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT21010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT21010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT21010] TO [DYNGRP]
GO
