CREATE TABLE [dbo].[EXT20235]
(
[Extender_Navigation_List] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20235] ADD CONSTRAINT [PKEXT20235] PRIMARY KEY NONCLUSTERED  ([Extender_Navigation_List], [USERID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20235] ON [dbo].[EXT20235] ([Extender_Navigation_List], [USERID], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20235].[Extender_Navigation_List]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20235].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20235].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20235].[Field_ID]'
GO
GRANT SELECT ON  [dbo].[EXT20235] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20235] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20235] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20235] TO [DYNGRP]
GO
