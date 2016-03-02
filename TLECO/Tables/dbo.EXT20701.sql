CREATE TABLE [dbo].[EXT20701]
(
[Extender_Import_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_ID] [int] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Start_Position] [smallint] NOT NULL,
[End_Position] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20701] ADD CONSTRAINT [PKEXT20701] PRIMARY KEY NONCLUSTERED  ([Extender_Import_ID], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20701].[Extender_Import_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20701].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20701].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20701].[Start_Position]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20701].[End_Position]'
GO
GRANT SELECT ON  [dbo].[EXT20701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20701] TO [DYNGRP]
GO
