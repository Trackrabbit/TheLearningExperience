CREATE TABLE [dbo].[EXT20405]
(
[Extender_Event_ID] [int] NOT NULL,
[Action_Number] [smallint] NOT NULL,
[Extender_Hot_Key] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20405] ADD CONSTRAINT [PKEXT20405] PRIMARY KEY NONCLUSTERED  ([Extender_Event_ID], [Action_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20405].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20405].[Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20405].[Extender_Hot_Key]'
GO
GRANT SELECT ON  [dbo].[EXT20405] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20405] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20405] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20405] TO [DYNGRP]
GO
