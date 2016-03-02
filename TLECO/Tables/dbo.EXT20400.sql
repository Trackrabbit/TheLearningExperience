CREATE TABLE [dbo].[EXT20400]
(
[Extender_Event_ID] [int] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Event_Type] [smallint] NOT NULL,
[Field_ID] [int] NOT NULL,
[Extender_Event_Desc] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20400] ADD CONSTRAINT [PKEXT20400] PRIMARY KEY NONCLUSTERED  ([Extender_Event_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20400] ON [dbo].[EXT20400] ([Extender_Type], [Extender_ID], [Extender_Event_Type], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20400].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20400].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20400].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20400].[Extender_Event_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20400].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20400].[Extender_Event_Desc]'
GO
GRANT SELECT ON  [dbo].[EXT20400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20400] TO [DYNGRP]
GO
