CREATE TABLE [dbo].[EXT20231]
(
[Extender_Navigation_List] [int] NOT NULL,
[Navigation_Field_Type] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[Search_Method] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20231] ADD CONSTRAINT [PKEXT20231] PRIMARY KEY NONCLUSTERED  ([Extender_Navigation_List], [Navigation_Field_Type], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20231] ON [dbo].[EXT20231] ([Extender_Navigation_List], [Navigation_Field_Type], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20231].[Extender_Navigation_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20231].[Navigation_Field_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20231].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20231].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20231].[Search_Method]'
GO
GRANT SELECT ON  [dbo].[EXT20231] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20231] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20231] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20231] TO [DYNGRP]
GO
